use customer_churn

select count(*) from [Telco-Customer-Churn]


-- 1. Overall churn rate
SELECT
    COUNT(*) as TotalCustomers,
    SUM(CAST(Churn_Flag as INT)) as ChurnedCustomers,
    CAST(SUM(CAST(Churn_Flag as INT)) as FLOAT) / COUNT(*) as ChurnRate
FROM [Telco-Customer-Churn];


-- 2. Churn rate by contract type
SELECT
    Contract,
    COUNT(*) as TotalCustomers,
    SUM(CAST(Churn_Flag as INT)) as ChurnedCustomers,
    CAST(SUM(CAST(Churn_Flag as INT)) as FLOAT) / COUNT(*) as ChurnRate
FROM [Telco-Customer-Churn]
GROUP BY Contract
ORDER BY ChurnRate DESC;


-- 3. Churn rate by tenure bucket
SELECT
    CASE
        when Tenure <= 12 then '0-12 months'
        when Tenure <= 24 then '13-24 months'
        when Tenure <= 48 then '25-48 months'
        else '49+ months'
    END as TenureBucket,
    COUNT(*) as TotalCustomers,
    CAST(SUM(CAST(Churn_Flag as INT)) as FLOAT) / COUNT(*) as ChurnRate
FROM [Telco-Customer-Churn]
GROUP BY
    CASE
        when Tenure <= 12 then '0-12 months'
        when Tenure <= 24 then '13-24 months'
        when Tenure <= 48 then '25-48 months'
        else '49+ months'
    END
ORDER BY ChurnRate DESC;


-- 4. Churn rate by payment method
SELECT
    PaymentMethod,
    COUNT(*) as TotalCustomers,
    CAST(SUM(CAST(Churn_Flag as INT)) as FLOAT) / COUNT(*) as ChurnRate
FROM [Telco-Customer-Churn]
GROUP BY PaymentMethod
ORDER BY ChurnRate DESC;


-- 5. Revenue at risk
SELECT
    SUM(CASE when CAST(Churn_Flag as INT) = 1 then MonthlyCharges else 0 end) as MonthlyRevenueLost,
    SUM(MonthlyCharges) as TotalMonthlyRevenue,
    CAST(SUM(CASE when CAST(Churn_Flag as INT) = 1 then MonthlyCharges else 0 end) as FLOAT)
        / SUM(MonthlyCharges) as PctRevenueLost
FROM [Telco-Customer-Churn];


-- 6. Combined view: contract type + internet service
SELECT
    Contract,
    InternetService,
    COUNT(*) as TotalCustomers,
    CAST(SUM(CAST(Churn_Flag as INT)) as FLOAT) / COUNT(*) as ChurnRate
FROM [Telco-Customer-Churn]
GROUP BY Contract, InternetService
ORDER BY ChurnRate DESC;
