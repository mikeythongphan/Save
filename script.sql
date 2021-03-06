USE [LITSNEW]
GO
/****** Object:  Table [dbo].[_audit_al_approval_information]    Script Date: 6/22/2018 5:29:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_approval_information](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[arta_credit_life] [decimal](18, 4) NULL,
	[application_number] [nvarchar](50) NULL,
	[fk_m_payment_type_id] [int] NULL,
	[life_assured] [decimal](18, 4) NULL,
	[applied_sum_assured] [decimal](18, 4) NULL,
	[applied_premium] [decimal](18, 4) NULL,
	[mrta_amount] [decimal](18, 4) NULL,
	[loan_amt_with_mrta] [decimal](18, 4) NULL,
	[ltv_percent_with_mrta] [decimal](18, 4) NULL,
	[emi_with_mrta] [decimal](18, 4) NULL,
	[emi_with_mrta_percent_added] [decimal](18, 4) NULL,
	[dbr_with_mrta_percent_added] [decimal](18, 4) NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_car_sales_information]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_car_sales_information](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[car_sales_name] [nvarchar](500) NULL,
	[phone_number] [nvarchar](50) NULL,
	[remark] [nvarchar](500) NULL,
	[fk_al_application_information_id] [int] NULL,
	[is_active] [bit] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_corporate_application]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_corporate_application](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[total_income] [decimal](18, 4) NULL,
	[fk_m_company_code_id] [int] NULL,
	[fk_m_customer_relationship_id] [int] NULL,
	[total_months_in_operation] [int] NULL,
	[registered_capital] [decimal](18, 4) NULL,
	[number_of_banks_usage] [int] NULL,
	[billing_address] [nvarchar](500) NULL,
	[tax_number] [nvarchar](50) NULL,
	[is_blacklist] [bit] NULL,
	[total_individual_obligation_repayment] [decimal](18, 4) NULL,
	[amount_requested] [decimal](18, 4) NULL,
	[fk_m_loan_tenor_id] [int] NULL,
	[ltv] [decimal](18, 4) NULL,
	[fk_m_program_type_id] [int] NULL,
	[fk_m_floating_interest_rate_id] [int] NULL,
	[fk_m_loan_purpose_id] [int] NULL,
	[fk_m_payment_type_id] [int] NULL,
	[fk_m_campaign_code_id] [int] NULL,
	[fk_m_credit_deviation_id] [int] NULL,
	[fk_m_reason_for_deviation_id] [int] NULL,
	[fk_al_car_marker_brand_id] [int] NULL,
	[fk_m_property_status_id] [int] NULL,
	[fk_al_car_model_id] [int] NULL,
	[fk_al_car_type_id] [int] NULL,
	[fk_al_car_source_id] [int] NULL,
	[year_of_manufacture] [int] NULL,
	[color] [nvarchar](50) NULL,
	[number_of_seats] [int] NULL,
	[chassis_number] [nvarchar](50) NULL,
	[purchasing_price_or_fair_market_value] [decimal](18, 4) NULL,
	[purchasing_sp_contract_number] [nvarchar](50) NULL,
	[collateral_value] [decimal](18, 4) NULL,
	[fk_al_car_dealer_id] [int] NULL,
	[car_dealer_promissory_disbursement_cap] [decimal](18, 4) NULL,
	[car_dealer_promissory_disbursement_available_limit] [decimal](18, 4) NULL,
	[car_dealer_total_disbursement] [decimal](18, 4) NULL,
	[car_dealer_il_cap] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_bonus_monthly]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_bonus_monthly](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_al_customer_income_id] [int] NULL,
	[fk_al_customer_salaried_income_id] [int] NULL,
	[fk_m_bonus_type_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[input_verification] [nvarchar](50) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[monthly] [decimal](18, 4) NULL,
	[first_time] [decimal](18, 4) NULL,
	[second_time] [decimal](18, 4) NULL,
	[third_time] [decimal](18, 4) NULL,
	[fourth_time] [decimal](18, 4) NULL,
	[fifth_time] [decimal](18, 4) NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_credit_bureau]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_credit_bureau](
	[pk_id] [int] NOT NULL,
	[fk_customer_information_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[bureau_data_loan_current] [decimal](18, 4) NULL,
	[bureau_data_loan_history] [decimal](18, 4) NULL,
	[fk_application_information_id] [int] NULL,
	[bureau_data_card_current] [decimal](18, 4) NULL,
	[bureau_data_dard_history] [decimal](18, 4) NULL,
	[fk_m_credit_bureau_type_id] [int] NULL,
	[current_unsecured_outstanding_on_us] [decimal](18, 4) NULL,
	[current_total_emi_on_us] [decimal](18, 4) NULL,
	[current_unsecure_limit_on_us] [decimal](18, 4) NULL,
	[current_unsecured_outstanding_off_us] [decimal](18, 4) NULL,
	[current_total_emi_off_us] [decimal](18, 4) NULL,
	[total_outstanding_balance_credit_card] [decimal](18, 4) NULL,
	[total_limit_credit_card] [decimal](18, 4) NULL,
	[current_card_utilization_percent] [decimal](18, 4) NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_income]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_income](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[remark] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_income_monthly]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_income_monthly](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_al_customer_income_id] [int] NULL,
	[fk_al_customer_rental_income_id] [int] NULL,
	[fk_al_customer_salaried_income_id] [int] NULL,
	[fk_al_customer_seft_employed_income_id] [int] NULL,
	[fk_al_customer_other_income_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[monthly] [decimal](18, 4) NULL,
	[remark] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[first_time] [decimal](18, 4) NULL,
	[second_time] [decimal](18, 4) NULL,
	[third_time] [decimal](18, 4) NULL,
	[input_verification] [nvarchar](50) NULL,
	[fourth_time] [decimal](18, 4) NULL,
	[fifth_time] [decimal](18, 4) NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_information]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_information](
	[pk_id] [int] NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[created_date] [datetime] NULL,
	[created_by] [nvarchar](50) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_other_income]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_other_income](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[arta_credit_life] [decimal](18, 4) NULL,
	[application_number] [nvarchar](50) NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[discount_rate] [decimal](18, 4) NULL,
	[total_updated_turnover] [decimal](18, 4) NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_m_borrower_type_id1] [int] NULL,
	[fk_m_income_type_id_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_rental_income]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_rental_income](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NOT NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_al_customer_income_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[is_active] [bit] NULL,
	[details_of_property_for_rent] [nvarchar](500) NULL,
	[rental_property_ownership_name] [nvarchar](500) NULL,
	[lessee_name_address_contact] [nvarchar](500) NULL,
	[rental_property_address] [nvarchar](500) NULL,
	[rental_property_ward] [nvarchar](500) NULL,
	[fk_rental_property_district_id] [int] NULL,
	[fk_rental_property_city_id] [int] NULL,
	[rental_contract_tenure] [nvarchar](50) NULL,
	[monthly_rental_fee] [decimal](18, 4) NULL,
	[fk_rental_purpose_id] [nvarchar](500) NULL,
	[repayment_cycle] [decimal](18, 4) NULL,
	[income_payment_method_id] [int] NULL,
	[total_rental_income] [decimal](18, 4) NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_salaried_income]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_salaried_income](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_customer_information_id] [int] NOT NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[company_code] [nvarchar](50) NULL,
	[company_name] [nvarchar](500) NULL,
	[company_address] [nvarchar](500) NULL,
	[company_ward] [nvarchar](500) NULL,
	[fk_company_district_id] [int] NULL,
	[fk_company_city_id] [int] NULL,
	[office_telephone] [nvarchar](50) NULL,
	[fk_m_business_nature_id] [int] NULL,
	[fk_m_industry_id] [int] NULL,
	[fk_m_occupation_id] [int] NULL,
	[fk_m_position_id] [int] NULL,
	[fk_m_employment_type_id] [int] NULL,
	[working_address] [nvarchar](500) NULL,
	[working_ward] [nvarchar](500) NULL,
	[fk_working_district_id] [int] NULL,
	[fk_working_city_id] [int] NULL,
	[percent_shares_in_company] [decimal](18, 4) NULL,
	[fk_m_labour_contract_type_id] [int] NULL,
	[contract_length] [int] NULL,
	[start_date_at_current_company] [datetime] NULL,
	[total_months_in_current_company] [int] NULL,
	[total_months_in_working_experience] [int] NULL,
	[monthly_income] [decimal](18, 4) NULL,
	[period_of_submitted_bs] [int] NULL,
	[freelance_income] [decimal](18, 4) NULL,
	[gross_base_salary] [decimal](18, 4) NULL,
	[basic_allowance] [decimal](18, 4) NULL,
	[eligible_fixed_income_on_lc] [decimal](18, 4) NULL,
	[fixed_income_via_bs] [decimal](18, 4) NULL,
	[total_monthly_income_via_bs] [decimal](18, 4) NULL,
	[performance_bonus] [decimal](18, 4) NULL,
	[final_income] [decimal](18, 4) NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_m_income_type_id_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_customer_seft_employed_income]    Script Date: 6/22/2018 5:29:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_customer_seft_employed_income](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[company_name] [nvarchar](500) NULL,
	[business_licence_number] [nvarchar](50) NULL,
	[tax_code] [nvarchar](50) NULL,
	[company_address] [nvarchar](500) NULL,
	[company_ward] [nvarchar](500) NULL,
	[office_tel] [nvarchar](50) NULL,
	[fk_company_district_id] [int] NULL,
	[fk_company_city_id] [int] NULL,
	[fk_main_company_industry_1_id] [int] NULL,
	[fk_main_company_industry_2_id] [int] NULL,
	[fk_other_company_industry_id] [int] NULL,
	[fk_seasonal_industry_id] [int] NULL,
	[established_year] [datetime] NULL,
	[total_years_in_operation] [int] NULL,
	[percent_shareholding_in_company] [decimal](18, 4) NULL,
	[profit_lossIn_latest_year] [decimal](18, 4) NULL,
	[fk_type_of_self_employment_income_id] [int] NULL,
	[igm_vat_total_turnover_in_fs] [decimal](18, 4) NULL,
	[igm_vat_monthly_turnover_in_year] [decimal](18, 4) NULL,
	[igm_vat_total_updated_turnover] [decimal](18, 4) NULL,
	[igm_vat_average_monthly_updated_turnover] [decimal](18, 4) NULL,
	[igm_vat_compared_with_turnover] [decimal](18, 4) NULL,
	[igm_vat_revised_average_monthly_turnover] [decimal](18, 4) NULL,
	[igm_vat_split_upIndustry_1] [decimal](18, 4) NULL,
	[igm_vat_split_upIndustry_2] [decimal](18, 4) NULL,
	[igm_vat_split_up_industry_3] [decimal](18, 4) NULL,
	[igm_vat_industrial_margin_1] [decimal](18, 4) NULL,
	[igm_vat_industrial_margin_2] [decimal](18, 4) NULL,
	[igm_vat_industrial_margin_3] [decimal](18, 4) NULL,
	[igm_vat_monthly_self_employed_income] [decimal](18, 4) NULL,
	[igm_vat_customer_monthly_self_employed_income] [decimal](18, 4) NULL,
	[igm_vat_remark] [decimal](18, 4) NULL,
	[igm_bs_total_turnoverI_in_fs] [decimal](18, 4) NULL,
	[igm_bs_monthly_turnover_in_year] [decimal](18, 4) NULL,
	[igm_bs_other_monthly_turnover] [decimal](18, 4) NULL,
	[cpp_total_turnover_in_fs] [decimal](18, 4) NULL,
	[cpp_monthly_turnover_in_year] [decimal](18, 4) NULL,
	[cpp_profit_after_tax_pat] [decimal](18, 4) NULL,
	[cpp_depreciation] [decimal](18, 4) NULL,
	[cpp_monthly_self_employed] [decimal](18, 4) NULL,
	[cpp_customer_monthly_self_employed_income] [decimal](18, 4) NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_m_income_type_id_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_disbursement_information]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_disbursement_information](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[plate_form_number] [nvarchar](50) NULL,
	[engine_number] [nvarchar](50) NULL,
	[chassis_number] [nvarchar](50) NULL,
	[insurance_company_name] [nvarchar](500) NULL,
	[insurance_amount] [decimal](18, 4) NULL,
	[insurance_expiry_date] [datetime] NULL,
	[post_disbursement_condition_expiry_date] [datetime] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_loan_bureau]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_loan_bureau](
	[pk_id] [int] NOT NULL,
	[pk_application_information_id] [int] NULL,
	[secured_type] [nvarchar](50) NULL,
	[group_loan_name] [nvarchar](500) NULL,
	[no_of_delinquency] [int] NULL,
	[initial_loan] [decimal](18, 4) NULL,
	[interest_rate] [decimal](18, 4) NULL,
	[outstanding] [decimal](18, 4) NULL,
	[emi] [decimal](18, 4) NULL,
	[source] [nvarchar](50) NULL,
	[fk_m_tenor_id] [int] NULL,
	[fk_al_customer_credit_bureau_id] [int] NULL,
	[bank] [nvarchar](500) NULL,
	[is_auto_cal_emi] [bit] NULL,
	[is_scb_loan] [bit] NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[date_of_cic_results] [datetime] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_personal_application]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_personal_application](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[total_borrower_salaried_income] [decimal](18, 4) NULL,
	[total_borrower_rental_income] [decimal](18, 4) NULL,
	[total_borrower_car_rental_income] [decimal](18, 4) NULL,
	[total_income] [decimal](18, 4) NULL,
	[total_monthly_individual_obligation_repayment] [decimal](18, 4) NULL,
	[total_fd_value] [decimal](18, 4) NULL,
	[total_property_owned] [decimal](18, 4) NULL,
	[total_car_owned] [decimal](18, 4) NULL,
	[other_asset] [decimal](18, 4) NULL,
	[monthly_expenditure_vnd] [decimal](18, 4) NULL,
	[amount_requested_vnd] [decimal](18, 4) NULL,
	[fk_m_loan_tenor_id] [int] NULL,
	[ltv] [decimal](18, 4) NULL,
	[fk_m_program_type_id] [int] NULL,
	[fk_m_floating_interest_rate_id] [int] NULL,
	[fk_m_loan_purpose_id] [int] NULL,
	[fk_m_payment_type_id] [int] NULL,
	[fk_m_campaign_code_id] [int] NULL,
	[fk_m_credit_deviation_id] [int] NULL,
	[fk_m_reason_for_deviation_id] [int] NULL,
	[fk_al_car_marker_brand_id] [int] NULL,
	[fk_m_property_status_id] [int] NULL,
	[fk_al_car_model_id] [int] NULL,
	[fk_al_car_type_id] [int] NULL,
	[fk_al_car_source_id] [int] NULL,
	[year_of_manufacture] [int] NULL,
	[color] [nvarchar](50) NULL,
	[number_of_seats] [int] NULL,
	[chassis_number] [nvarchar](50) NULL,
	[purchasing_price] [decimal](18, 4) NULL,
	[purchasing_sp_contract_number] [nvarchar](50) NULL,
	[collateral_value] [decimal](18, 4) NULL,
	[fk_al_car_dealer_id] [int] NULL,
	[cooperation_contract_active] [nvarchar](50) NULL,
	[car_dealer_promissory_disbursement_cap] [decimal](18, 4) NULL,
	[car_dealer_promissory_disbursement_available_limit] [decimal](18, 4) NULL,
	[car_dealer_total_disbursement] [decimal](18, 4) NULL,
	[car_dealer_il_cap] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_al_wealth_demonstration]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_al_wealth_demonstration](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[total_fd_value] [decimal](18, 4) NULL,
	[total_property_owned] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[other_asset] [nvarchar](50) NULL,
	[total_car_owned] [decimal](18, 4) NULL,
	[monthly_expenditure] [decimal](18, 4) NULL,
	[is_company] [bit] NULL,
	[is_legal_ref] [bit] NULL,
	[is_owner] [bit] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_application_custody]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_application_custody](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_m_custody_type_id] [int] NULL,
 CONSTRAINT [PK__audit_application_custody] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_application_information]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_application_information](
	[pk_id] [int] NOT NULL,
	[application_no] [nvarchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[arm_code] [nvarchar](50) NULL,
	[received_date] [datetime] NULL,
	[sale_staff_bank_id] [nvarchar](50) NULL,
	[sale_staff_name] [nvarchar](50) NULL,
	[fk_m_product_id] [int] NULL,
	[fk_m_program_type_id] [int] NULL,
	[fk_m_payment_type_id] [int] NULL,
	[fk_m_property_sale_id] [int] NULL,
	[fk_m_property_status_id] [int] NULL,
	[fk_m_property_type_id] [int] NULL,
	[fk_m_status_id] [int] NULL,
	[fk_m_trading_area_id] [int] NULL,
	[fk_m_type_id] [int] NULL,
	[fk_m_branch_code_id] [int] NULL,
	[fk_m_branch_location_id] [int] NULL,
	[fk_m_loan_purpose_id] [int] NULL,
	[fk_m_loan_tenor_id] [int] NULL,
	[fk_m_floating_interest_rate_id] [int] NULL,
	[fk_m_customer_type_id] [int] NULL,
	[sales_code] [nvarchar](50) NULL,
	[expecting_disbursed_date] [datetime] NULL,
	[is_rework] [bit] NULL,
	[is_locked] [bit] NULL,
	[user_lock] [nvarchar](50) NULL,
	[is_remodified] [bit] NULL,
	[is_fraud_bl_approved] [bit] NULL,
	[is_fasg] [bit] NULL,
	[is_override_checking] [bit] NULL,
	[is_sms_send] [int] NULL,
	[is_send_email] [int] NULL,
	[is_duplication] [bit] NULL,
	[is_email_verification] [bit] NULL,
	[sales_team_manager_bank_id] [nvarchar](50) NULL,
	[sales_team_manager_name] [nvarchar](50) NULL,
	[eops_txn_ref_no_1] [nvarchar](50) NULL,
	[eops_txn_ref_no_2] [nvarchar](50) NULL,
	[eops_txn_ref_no_3] [nvarchar](50) NULL,
	[hard_copy_app_date] [datetime] NULL,
	[fk_m_credit_deviation_id] [int] NULL,
	[fk_m_criteria_id] [int] NULL,
	[is_active] [bit] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_approval_information]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_approval_information](
	[pk_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[date_of_decision] [datetime] NULL,
	[approval_condition] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_reject_reason_id] [int] NOT NULL,
	[fk_cancel_reason_id] [int] NOT NULL,
	[fk_send_back_reason_id] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[current_out_standing_at_scb] [decimal](18, 4) NULL,
	[pl] [decimal](18, 4) NULL,
	[ml] [decimal](18, 4) NULL,
	[al] [decimal](18, 4) NULL,
	[cc] [decimal](18, 4) NULL,
	[total_emi_at_scb] [decimal](18, 4) NULL,
	[loan_amount_approved] [decimal](18, 4) NULL,
	[tenor_approved] [decimal](18, 4) NULL,
	[commercial_interest] [decimal](18, 4) NULL,
	[emi_com_int] [decimal](18, 4) NULL,
	[emi_percent_added] [decimal](18, 4) NULL,
	[dbr_percent_added] [decimal](18, 4) NULL,
	[ltv] [decimal](18, 4) NULL,
	[total_exposure] [decimal](18, 4) NULL,
	[total_emi] [decimal](18, 4) NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_customer_identification]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_customer_identification](
	[pk_id] [int] NOT NULL,
	[fk_customer_information_id] [int] NOT NULL,
	[identification_no] [nvarchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[fk_m_identification_type_id] [int] NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[Issued_date] [datetime] NULL,
	[place_of_issuance] [nvarchar](500) NULL,
	[expried_date] [datetime] NULL,
	[work_permit] [datetime] NULL,
	[fk_m_nationality_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_customer_income]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_customer_income](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_customer_information]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_customer_information](
	[pk_id] [int] NOT NULL,
	[initital] [nvarchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
	[dob] [datetime] NULL,
	[created_date] [datetime] NULL,
	[created_by] [nvarchar](50) NULL,
	[embossing_name] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_audit_disbursement_information]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_audit_disbursement_information](
	[pk_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[disbursed_date] [datetime] NULL,
	[disbursed_amount] [decimal](18, 4) NULL,
	[loan_account_number] [nvarchar](50) NULL,
	[fk_application_information_id] [int] NOT NULL,
	[fk_m_customer_relationship_id] [int] NULL,
	[is_latest] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_approval_information]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_approval_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[arta_credit_life] [decimal](18, 4) NULL,
	[application_number] [nvarchar](50) NULL,
	[fk_m_payment_type_id] [int] NULL,
	[life_assured] [decimal](18, 4) NULL,
	[applied_sum_assured] [decimal](18, 4) NULL,
	[applied_premium] [decimal](18, 4) NULL,
	[mrta_amount] [decimal](18, 4) NULL,
	[loan_amt_with_mrta] [decimal](18, 4) NULL,
	[ltv_percent_with_mrta] [decimal](18, 4) NULL,
	[emi_with_mrta] [decimal](18, 4) NULL,
	[emi_with_mrta_percent_added] [decimal](18, 4) NULL,
	[dbr_with_mrta_percent_added] [decimal](18, 4) NULL,
	[fk_al_application_information_id] [int] NULL,
 CONSTRAINT [PK_al_approval_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_car_dealer]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_car_dealer](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[car_dealer_name] [nvarchar](500) NULL,
	[car_dealer_address] [nvarchar](500) NULL,
	[car_dealer_wards] [nvarchar](500) NULL,
	[fk_car_dealer_district_id] [int] NULL,
	[fk_car_dealer_city_id] [int] NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_al_car_dealer] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_car_marker_brand]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_car_marker_brand](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_al_car_marker_brand] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_car_model]    Script Date: 6/22/2018 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_car_model](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_al_car_model] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_car_sales_information]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_car_sales_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[car_sales_name] [nvarchar](500) NULL,
	[phone_number] [nvarchar](50) NULL,
	[remark] [nvarchar](500) NULL,
	[fk_al_application_information_id] [int] NULL,
 CONSTRAINT [PK_al_car_sales_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_car_source]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_car_source](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_al_car_source] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_car_type]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_car_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
 CONSTRAINT [PK_al_car_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_corporate_application]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_corporate_application](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[total_income] [decimal](18, 4) NULL,
	[fk_m_company_code_id] [int] NULL,
	[fk_m_customer_relationship_id] [int] NULL,
	[total_months_in_operation] [int] NULL,
	[registered_capital] [decimal](18, 4) NULL,
	[number_of_banks_usage] [int] NULL,
	[billing_address] [nvarchar](500) NULL,
	[tax_number] [nvarchar](50) NULL,
	[is_blacklist] [bit] NULL,
	[total_individual_obligation_repayment] [decimal](18, 4) NULL,
	[amount_requested] [decimal](18, 4) NULL,
	[fk_m_loan_tenor_id] [int] NULL,
	[ltv] [decimal](18, 4) NULL,
	[fk_m_program_type_id] [int] NULL,
	[fk_m_floating_interest_rate_id] [int] NULL,
	[fk_m_loan_purpose_id] [int] NULL,
	[fk_m_payment_type_id] [int] NULL,
	[fk_m_campaign_code_id] [int] NULL,
	[fk_m_credit_deviation_id] [int] NULL,
	[fk_m_reason_for_deviation_id] [int] NULL,
	[fk_al_car_marker_brand_id] [int] NULL,
	[fk_m_property_status_id] [int] NULL,
	[fk_al_car_model_id] [int] NULL,
	[fk_al_car_type_id] [int] NULL,
	[fk_al_car_source_id] [int] NULL,
	[year_of_manufacture] [int] NULL,
	[color] [nvarchar](50) NULL,
	[number_of_seats] [int] NULL,
	[chassis_number] [nvarchar](50) NULL,
	[purchasing_price_or_fair_market_value] [decimal](18, 4) NULL,
	[purchasing_sp_contract_number] [nvarchar](50) NULL,
	[collateral_value] [decimal](18, 4) NULL,
	[fk_al_car_dealer_id] [int] NULL,
	[car_dealer_promissory_disbursement_cap] [decimal](18, 4) NULL,
	[car_dealer_promissory_disbursement_available_limit] [decimal](18, 4) NULL,
	[car_dealer_total_disbursement] [decimal](18, 4) NULL,
	[car_dealer_il_cap] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
 CONSTRAINT [PK_al_corporate_application] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_bonus_monthly]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_bonus_monthly](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_al_customer_income_id] [int] NULL,
	[fk_al_customer_salaried_income_id] [int] NULL,
	[fk_m_bonus_type_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[input_verification] [nvarchar](50) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[monthly] [decimal](18, 4) NULL,
	[first_time] [decimal](18, 4) NULL,
	[second_time] [decimal](18, 4) NULL,
	[third_time] [decimal](18, 4) NULL,
	[fourth_time] [decimal](18, 4) NULL,
	[fifth_time] [decimal](18, 4) NULL,
 CONSTRAINT [PK_al_customer_bonus_monthly] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_credit_bureau]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_credit_bureau](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_customer_information_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[bureau_data_loan_current] [decimal](18, 4) NULL,
	[bureau_data_loan_history] [decimal](18, 4) NULL,
	[fk_application_information_id] [int] NULL,
	[bureau_data_card_current] [decimal](18, 4) NULL,
	[bureau_data_dard_history] [decimal](18, 4) NULL,
	[fk_m_credit_bureau_type_id] [int] NULL,
	[current_unsecured_outstanding_on_us] [decimal](18, 4) NULL,
	[current_total_emi_on_us] [decimal](18, 4) NULL,
	[current_unsecure_limit_on_us] [decimal](18, 4) NULL,
	[current_unsecured_outstanding_off_us] [decimal](18, 4) NULL,
	[current_total_emi_off_us] [decimal](18, 4) NULL,
	[total_outstanding_balance_credit_card] [decimal](18, 4) NULL,
	[total_limit_credit_card] [decimal](18, 4) NULL,
	[current_card_utilization_percent] [decimal](18, 4) NULL,
 CONSTRAINT [PK_al_customer_credit_bureau] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_income]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_income](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[remark] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
 CONSTRAINT [PK_al_customer_income] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_income_monthly]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_income_monthly](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_al_customer_income_id] [int] NULL,
	[fk_al_customer_rental_income_id] [int] NULL,
	[fk_al_customer_salaried_income_id] [int] NULL,
	[fk_al_customer_seft_employed_income_id] [int] NULL,
	[fk_al_customer_other_income_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[monthly] [decimal](18, 4) NULL,
	[remark] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[first_time] [decimal](18, 4) NULL,
	[second_time] [decimal](18, 4) NULL,
	[third_time] [decimal](18, 4) NULL,
	[input_verification] [nvarchar](50) NULL,
	[fourth_time] [decimal](18, 4) NULL,
	[fifth_time] [decimal](18, 4) NULL,
 CONSTRAINT [PK_al_customer_income_monthly] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_information]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[created_date] [datetime] NULL,
	[created_by] [nvarchar](50) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
 CONSTRAINT [PK_al_customer_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_other_income]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_other_income](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[arta_credit_life] [decimal](18, 4) NULL,
	[application_number] [nvarchar](50) NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[discount_rate] [decimal](18, 4) NULL,
	[total_updated_turnover] [decimal](18, 4) NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_m_borrower_type_id1] [int] NULL,
	[fk_m_income_type_id_id] [int] NULL,
 CONSTRAINT [PK_al_customer_other_income] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_rental_income]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_rental_income](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NOT NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_al_customer_income_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[is_active] [bit] NULL,
	[details_of_property_for_rent] [nvarchar](500) NULL,
	[rental_property_ownership_name] [nvarchar](500) NULL,
	[lessee_name_address_contact] [nvarchar](500) NULL,
	[rental_property_address] [nvarchar](500) NULL,
	[rental_property_ward] [nvarchar](500) NULL,
	[fk_rental_property_district_id] [int] NULL,
	[fk_rental_property_city_id] [int] NULL,
	[rental_contract_tenure] [nvarchar](50) NULL,
	[monthly_rental_fee] [decimal](18, 4) NULL,
	[fk_rental_purpose_id] [nvarchar](500) NULL,
	[repayment_cycle] [decimal](18, 4) NULL,
	[income_payment_method_id] [int] NULL,
	[total_rental_income] [decimal](18, 4) NULL,
 CONSTRAINT [PK_al_customer_rental_income] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_salaried_income]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_salaried_income](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_customer_information_id] [int] NOT NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[company_code] [nvarchar](50) NULL,
	[company_name] [nvarchar](500) NULL,
	[company_address] [nvarchar](500) NULL,
	[company_ward] [nvarchar](500) NULL,
	[fk_company_district_id] [int] NULL,
	[fk_company_city_id] [int] NULL,
	[office_telephone] [nvarchar](50) NULL,
	[fk_m_business_nature_id] [int] NULL,
	[fk_m_industry_id] [int] NULL,
	[fk_m_occupation_id] [int] NULL,
	[fk_m_position_id] [int] NULL,
	[fk_m_employment_type_id] [int] NULL,
	[working_address] [nvarchar](500) NULL,
	[working_ward] [nvarchar](500) NULL,
	[fk_working_district_id] [int] NULL,
	[fk_working_city_id] [int] NULL,
	[percent_shares_in_company] [decimal](18, 4) NULL,
	[fk_m_labour_contract_type_id] [int] NULL,
	[contract_length] [int] NULL,
	[start_date_at_current_company] [datetime] NULL,
	[total_months_in_current_company] [int] NULL,
	[total_months_in_working_experience] [int] NULL,
	[monthly_income] [decimal](18, 4) NULL,
	[period_of_submitted_bs] [int] NULL,
	[freelance_income] [decimal](18, 4) NULL,
	[gross_base_salary] [decimal](18, 4) NULL,
	[basic_allowance] [decimal](18, 4) NULL,
	[eligible_fixed_income_on_lc] [decimal](18, 4) NULL,
	[fixed_income_via_bs] [decimal](18, 4) NULL,
	[total_monthly_income_via_bs] [decimal](18, 4) NULL,
	[performance_bonus] [decimal](18, 4) NULL,
	[final_income] [decimal](18, 4) NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_m_income_type_id_id] [int] NULL,
 CONSTRAINT [PK_al_customer_salaried_income] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_customer_seft_employed_income]    Script Date: 6/22/2018 5:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_customer_seft_employed_income](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_al_customer_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[company_name] [nvarchar](500) NULL,
	[business_licence_number] [nvarchar](50) NULL,
	[tax_code] [nvarchar](50) NULL,
	[company_address] [nvarchar](500) NULL,
	[company_ward] [nvarchar](500) NULL,
	[office_tel] [nvarchar](50) NULL,
	[fk_company_district_id] [int] NULL,
	[fk_company_city_id] [int] NULL,
	[fk_main_company_industry_1_id] [int] NULL,
	[fk_main_company_industry_2_id] [int] NULL,
	[fk_other_company_industry_id] [int] NULL,
	[fk_seasonal_industry_id] [int] NULL,
	[established_year] [datetime] NULL,
	[total_years_in_operation] [int] NULL,
	[percent_shareholding_in_company] [decimal](18, 4) NULL,
	[profit_lossIn_latest_year] [decimal](18, 4) NULL,
	[fk_type_of_self_employment_income_id] [int] NULL,
	[igm_vat_total_turnover_in_fs] [decimal](18, 4) NULL,
	[igm_vat_monthly_turnover_in_year] [decimal](18, 4) NULL,
	[igm_vat_total_updated_turnover] [decimal](18, 4) NULL,
	[igm_vat_average_monthly_updated_turnover] [decimal](18, 4) NULL,
	[igm_vat_compared_with_turnover] [decimal](18, 4) NULL,
	[igm_vat_revised_average_monthly_turnover] [decimal](18, 4) NULL,
	[igm_vat_split_upIndustry_1] [decimal](18, 4) NULL,
	[igm_vat_split_upIndustry_2] [decimal](18, 4) NULL,
	[igm_vat_split_up_industry_3] [decimal](18, 4) NULL,
	[igm_vat_industrial_margin_1] [decimal](18, 4) NULL,
	[igm_vat_industrial_margin_2] [decimal](18, 4) NULL,
	[igm_vat_industrial_margin_3] [decimal](18, 4) NULL,
	[igm_vat_monthly_self_employed_income] [decimal](18, 4) NULL,
	[igm_vat_customer_monthly_self_employed_income] [decimal](18, 4) NULL,
	[igm_vat_remark] [decimal](18, 4) NULL,
	[igm_bs_total_turnoverI_in_fs] [decimal](18, 4) NULL,
	[igm_bs_monthly_turnover_in_year] [decimal](18, 4) NULL,
	[igm_bs_other_monthly_turnover] [decimal](18, 4) NULL,
	[cpp_total_turnover_in_fs] [decimal](18, 4) NULL,
	[cpp_monthly_turnover_in_year] [decimal](18, 4) NULL,
	[cpp_profit_after_tax_pat] [decimal](18, 4) NULL,
	[cpp_depreciation] [decimal](18, 4) NULL,
	[cpp_monthly_self_employed] [decimal](18, 4) NULL,
	[cpp_customer_monthly_self_employed_income] [decimal](18, 4) NULL,
	[fk_customer_income_id] [int] NULL,
	[fk_al_application_information_id] [int] NULL,
	[fk_m_income_type_id_id] [int] NULL,
 CONSTRAINT [PK_al_customer_seft_employed_income] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_disbursement_information]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_disbursement_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[plate_form_number] [nvarchar](50) NULL,
	[engine_number] [nvarchar](50) NULL,
	[chassis_number] [nvarchar](50) NULL,
	[insurance_company_name] [nvarchar](500) NULL,
	[insurance_amount] [decimal](18, 4) NULL,
	[insurance_expiry_date] [datetime] NULL,
	[post_disbursement_condition_expiry_date] [datetime] NULL,
 CONSTRAINT [PK_al_disbursement_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_loan_bureau]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_loan_bureau](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[pk_application_information_id] [int] NULL,
	[secured_type] [nvarchar](50) NULL,
	[group_loan_name] [nvarchar](500) NULL,
	[no_of_delinquency] [int] NULL,
	[initial_loan] [decimal](18, 4) NULL,
	[interest_rate] [decimal](18, 4) NULL,
	[outstanding] [decimal](18, 4) NULL,
	[emi] [decimal](18, 4) NULL,
	[source] [nvarchar](50) NULL,
	[fk_m_tenor_id] [int] NULL,
	[fk_al_customer_credit_bureau_id] [int] NULL,
	[bank] [nvarchar](500) NULL,
	[is_auto_cal_emi] [bit] NULL,
	[is_scb_loan] [bit] NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[date_of_cic_results] [datetime] NULL,
 CONSTRAINT [PK_al_loan_bureau] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_personal_application]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_personal_application](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[total_borrower_salaried_income] [decimal](18, 4) NULL,
	[total_borrower_rental_income] [decimal](18, 4) NULL,
	[total_borrower_car_rental_income] [decimal](18, 4) NULL,
	[total_income] [decimal](18, 4) NULL,
	[total_monthly_individual_obligation_repayment] [decimal](18, 4) NULL,
	[total_fd_value] [decimal](18, 4) NULL,
	[total_property_owned] [decimal](18, 4) NULL,
	[total_car_owned] [decimal](18, 4) NULL,
	[other_asset] [decimal](18, 4) NULL,
	[monthly_expenditure_vnd] [decimal](18, 4) NULL,
	[amount_requested_vnd] [decimal](18, 4) NULL,
	[fk_m_loan_tenor_id] [int] NULL,
	[ltv] [decimal](18, 4) NULL,
	[fk_m_program_type_id] [int] NULL,
	[fk_m_floating_interest_rate_id] [int] NULL,
	[fk_m_loan_purpose_id] [int] NULL,
	[fk_m_payment_type_id] [int] NULL,
	[fk_m_campaign_code_id] [int] NULL,
	[fk_m_credit_deviation_id] [int] NULL,
	[fk_m_reason_for_deviation_id] [int] NULL,
	[fk_al_car_marker_brand_id] [int] NULL,
	[fk_m_property_status_id] [int] NULL,
	[fk_al_car_model_id] [int] NULL,
	[fk_al_car_type_id] [int] NULL,
	[fk_al_car_source_id] [int] NULL,
	[year_of_manufacture] [int] NULL,
	[color] [nvarchar](50) NULL,
	[number_of_seats] [int] NULL,
	[chassis_number] [nvarchar](50) NULL,
	[purchasing_price] [decimal](18, 4) NULL,
	[purchasing_sp_contract_number] [nvarchar](50) NULL,
	[collateral_value] [decimal](18, 4) NULL,
	[fk_al_car_dealer_id] [int] NULL,
	[cooperation_contract_active] [nvarchar](50) NULL,
	[car_dealer_promissory_disbursement_cap] [decimal](18, 4) NULL,
	[car_dealer_promissory_disbursement_available_limit] [decimal](18, 4) NULL,
	[car_dealer_total_disbursement] [decimal](18, 4) NULL,
	[car_dealer_il_cap] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
 CONSTRAINT [PK_al_personal_application] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_rework]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_rework](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[fk_m_rework_reason_id] [int] NULL,
	[remark] [nvarchar](50) NULL,
	[remark_response] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[send_back_date] [datetime] NULL,
	[send_back_by] [nvarchar](50) NULL,
	[received_date] [datetime] NULL,
	[received_by] [nvarchar](50) NULL,
	[response_date] [datetime] NULL,
	[user_type] [nvarchar](50) NULL,
	[log_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_al_rework] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_tat_logs]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_tat_logs](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[action] [nvarchar](50) NULL,
	[action_date] [datetime] NULL,
	[action_by] [nvarchar](50) NULL,
	[current_role] [nvarchar](50) NULL,
	[duration] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_al_tat_logs] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[al_wealth_demonstration]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[al_wealth_demonstration](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[total_fd_value] [decimal](18, 4) NULL,
	[total_property_owned] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[other_asset] [nvarchar](50) NULL,
	[total_car_owned] [decimal](18, 4) NULL,
	[monthly_expenditure] [decimal](18, 4) NULL,
	[is_company] [bit] NULL,
	[is_legal_ref] [bit] NULL,
	[is_owner] [bit] NULL,
 CONSTRAINT [PK_al_wealth_demonstration] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_action_log]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_action_log](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NULL,
	[fk_application_information_id] [int] NOT NULL,
	[action] [nvarchar](500) NULL,
	[action_by] [nvarchar](50) NULL,
	[action_date] [datetime] NULL,
 CONSTRAINT [PK_application_action_log] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_action_log_data]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_action_log_data](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NULL,
	[fk_application_information_id] [int] NOT NULL,
	[changed_value] [nvarchar](500) NULL,
	[action_by] [nvarchar](50) NULL,
	[action_date] [datetime] NULL,
	[action_user_role] [nvarchar](500) NULL,
	[is_final_data] [bit] NULL,
 CONSTRAINT [PK_application_action_log_data] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_changed_log]    Script Date: 6/22/2018 5:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_changed_log](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NULL,
	[fk_application_information_id] [int] NOT NULL,
	[pre_value] [ntext] NULL,
	[curr_value] [ntext] NULL,
	[updated_by] [nvarchar](50) NULL,
	[updated_date] [datetime] NULL,
	[log_type] [nvarchar](500) NULL,
 CONSTRAINT [PK_application_changed_log] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_custody]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_custody](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_m_custody_type_id] [int] NULL,
 CONSTRAINT [PK_application_custody] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_custody_action_log]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_custody_action_log](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_application_custody_document_id] [int] NULL,
	[action] [nvarchar](500) NULL,
	[action_by] [nvarchar](50) NULL,
	[action_date] [datetime] NULL,
 CONSTRAINT [PK_application_custody_action_log] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_custody_document]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_custody_document](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_application_custody_id] [int] NULL,
	[document_name] [nvarchar](500) NULL,
	[is_submited] [bit] NULL,
	[submited_date] [datetime] NULL,
	[submited_by] [nvarchar](50) NULL,
	[is_received] [bit] NULL,
	[received_date] [datetime] NULL,
	[received_by] [nvarchar](50) NULL,
	[is_required] [bit] NULL,
	[required_by] [nvarchar](50) NULL,
	[required_date] [datetime] NULL,
	[index_order] [int] NULL,
	[group_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_application_custody_document] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_custody_remark]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_custody_remark](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[created_as] [nvarchar](50) NULL,
	[fk_application_custody_id] [int] NULL,
	[remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_application_custody_remark] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_customer]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_customer](
	[pk_application_information_id] [int] NOT NULL,
	[pk_customer_information_id] [int] NOT NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_application_customer] PRIMARY KEY CLUSTERED 
(
	[pk_application_information_id] ASC,
	[pk_customer_information_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_duplication]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_duplication](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_application_information_duplication_id] [int] NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_m_duplication_type_id] [int] NULL,
	[identification_no] [nvarchar](50) NULL,
	[application_no] [nvarchar](50) NULL,
 CONSTRAINT [PK_application_duplication] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_information]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[application_no] [nvarchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[arm_code] [nvarchar](50) NULL,
	[received_date] [datetime] NULL,
	[sale_staff_bank_id] [nvarchar](50) NULL,
	[sale_staff_name] [nvarchar](50) NULL,
	[fk_m_product_id] [int] NULL,
	[fk_m_program_type_id] [int] NULL,
	[fk_m_payment_type_id] [int] NULL,
	[fk_m_property_sale_id] [int] NULL,
	[fk_m_property_status_id] [int] NULL,
	[fk_m_property_type_id] [int] NULL,
	[fk_m_status_id] [int] NULL,
	[fk_m_trading_area_id] [int] NULL,
	[fk_m_type_id] [int] NULL,
	[fk_m_branch_code_id] [int] NULL,
	[fk_m_branch_location_id] [int] NULL,
	[fk_m_loan_purpose_id] [int] NULL,
	[fk_m_loan_tenor_id] [int] NULL,
	[fk_m_floating_interest_rate_id] [int] NULL,
	[fk_m_customer_type_id] [int] NULL,
	[sales_code] [nvarchar](50) NULL,
	[expecting_disbursed_date] [datetime] NULL,
	[is_rework] [bit] NULL,
	[is_locked] [bit] NULL,
	[user_lock] [nvarchar](50) NULL,
	[is_remodified] [bit] NULL,
	[is_fraud_bl_approved] [bit] NULL,
	[is_fasg] [bit] NULL,
	[is_override_checking] [bit] NULL,
	[is_sms_send] [int] NULL,
	[is_send_email] [int] NULL,
	[is_duplication] [bit] NULL,
	[is_email_verification] [bit] NULL,
	[sales_team_manager_bank_id] [nvarchar](50) NULL,
	[sales_team_manager_name] [nvarchar](50) NULL,
	[eops_txn_ref_no_1] [nvarchar](50) NULL,
	[eops_txn_ref_no_2] [nvarchar](50) NULL,
	[eops_txn_ref_no_3] [nvarchar](50) NULL,
	[hard_copy_app_date] [datetime] NULL,
	[fk_m_credit_deviation_id] [int] NULL,
	[fk_m_criteria_id] [int] NULL,
	[is_active] [bit] NULL,
	[is_black_list] [bit] NULL,
	[ict] [nvarchar](50) NULL,
	[fk_m_cdd_id] [int] NULL,
	[fk_m_customer_segment_id] [int] NULL,
	[is_existing] [bit] NULL,
	[fk_m_reason_rework_id] [int] NULL,
	[is_staff] [bit] NULL,
	[fk_m_sales_channel_id] [int] NULL,
	[fk_tele_status_id] [int] NULL,
 CONSTRAINT [PK_application_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_tat_logs]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_tat_logs](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[action] [nvarchar](50) NULL,
	[action_date] [datetime] NULL,
	[action_by] [nvarchar](50) NULL,
	[current_role] [nvarchar](50) NULL,
	[duration] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_application_tat_logs] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approval_information]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[date_of_decision] [datetime] NULL,
	[approval_condition] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_reject_reason_id] [int] NOT NULL,
	[fk_cancel_reason_id] [int] NOT NULL,
	[fk_send_back_reason_id] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[current_out_standing_at_scb] [decimal](18, 4) NULL,
	[pl] [decimal](18, 4) NULL,
	[ml] [decimal](18, 4) NULL,
	[al] [decimal](18, 4) NULL,
	[cc] [decimal](18, 4) NULL,
	[total_emi_at_scb] [decimal](18, 4) NULL,
	[loan_amount_approved] [decimal](18, 4) NULL,
	[tenor_approved] [decimal](18, 4) NULL,
	[commercial_interest] [decimal](18, 4) NULL,
	[emi_com_int] [decimal](18, 4) NULL,
	[emi_percent_added] [decimal](18, 4) NULL,
	[dbr_percent_added] [decimal](18, 4) NULL,
	[ltv] [decimal](18, 4) NULL,
	[total_exposure] [decimal](18, 4) NULL,
	[total_emi] [decimal](18, 4) NULL,
 CONSTRAINT [PK_approval_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company_information]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[company_code] [nvarchar](50) NULL,
	[company_address] [nvarchar](500) NULL,
	[company_ward] [nvarchar](500) NULL,
	[fk_company_district_id] [int] NULL,
	[fk_company_city_id] [int] NULL,
	[company_phone] [nvarchar](50) NULL,
	[company_fax] [nvarchar](50) NULL,
	[company_name_vn] [nvarchar](500) NULL,
	[fk_m_company_type_id] [int] NULL,
	[company_cat] [nvarchar](50) NULL,
	[tax_code] [nvarchar](50) NULL,
	[business_license] [nvarchar](50) NULL,
	[note] [nvarchar](500) NULL,
	[processed_date] [datetime] NULL,
	[processed_by] [nvarchar](50) NULL,
	[is_promotion] [bit] NULL,
	[rate_offer] [decimal](18, 4) NULL,
	[effective_from_date] [datetime] NULL,
	[effective_to_date] [datetime] NULL,
	[remarks] [nvarchar](500) NULL,
	[fk_reason_company_id] [int] NULL,
	[company_short_name] [nvarchar](500) NULL,
	[business_registration_number] [nvarchar](50) NULL,
	[date_of_incorporate] [datetime] NULL,
	[latest_date_update_on_business_license] [nvarchar](50) NULL,
	[number_of_change] [int] NULL,
	[fk_m_business_nature_id] [int] NULL,
	[fk_m_customer_relationship_id] [int] NULL,
	[fk_m_industry_id] [int] NULL,
	[total_months_in_operation] [int] NULL,
	[registered_capital] [decimal](18, 4) NULL,
	[number_of_banks_usage] [int] NULL,
	[billing_address] [nvarchar](500) NULL,
	[tax_number] [nvarchar](50) NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_customer_income_id] [int] NULL,
	[company_email] [nvarchar](50) NULL,
	[company_website] [nvarchar](50) NULL,
 CONSTRAINT [PK_company_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_bonus_monthly]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_bonus_monthly](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_m_bonus_type_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[input_verification] [nvarchar](50) NULL,
	[monthly] [decimal](18, 4) NULL,
	[remark] [nvarchar](500) NULL,
	[first_time] [decimal](18, 4) NULL,
	[second_time] [decimal](18, 4) NULL,
	[third_time] [decimal](18, 4) NULL,
	[fourth_time] [decimal](18, 4) NULL,
	[fifth_time] [decimal](18, 4) NULL,
	[fk_customer_income_id] [int] NULL,
 CONSTRAINT [PK_customer_bonus_monthly] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_identification]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_identification](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_customer_information_id] [int] NOT NULL,
	[identification_no] [nvarchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[fk_m_identification_type_id] [int] NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[Issued_date] [datetime] NULL,
	[place_of_issuance] [nvarchar](500) NULL,
	[expried_date] [datetime] NULL,
	[work_permit] [datetime] NULL,
	[fk_m_nationality_id] [int] NULL,
 CONSTRAINT [PK_customer_identification] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_income]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_income](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
 CONSTRAINT [PK_customer_income] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_income_monthly]    Script Date: 6/22/2018 5:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_income_monthly](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[fk_m_income_type_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[input_verification] [nvarchar](50) NULL,
	[monthly] [decimal](18, 4) NULL,
	[remark] [nvarchar](500) NULL,
	[first_time] [decimal](18, 4) NULL,
	[second_time] [decimal](18, 4) NULL,
	[third_time] [decimal](18, 4) NULL,
	[fourth_time] [decimal](18, 4) NULL,
	[fifth_time] [decimal](18, 4) NULL,
 CONSTRAINT [PK_customer_income_monthly] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_information]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[initital] [nvarchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
	[dob] [datetime] NULL,
	[created_date] [datetime] NULL,
	[created_by] [nvarchar](50) NULL,
	[embossing_name] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[fk_m_customer_type_id] [int] NULL,
	[fk_m_customer_segment_id] [int] NULL,
	[fk_application_information_id] [int] NULL,
	[fk_m_borrower_type_id] [int] NULL,
	[fk_m_company_code_id] [int] NULL,
 CONSTRAINT [PK_customer_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[delegation_authority]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delegation_authority](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[discretion_level] [nvarchar](50) NULL,
	[amount] [decimal](18, 4) NULL,
	[approved_date] [datetime] NULL,
	[approved_by] [nvarchar](50) NULL,
	[staff_bank_id] [nvarchar](50) NULL,
	[effective_from_date] [datetime] NULL,
	[effective_to_date] [datetime] NULL,
	[refer_id] [int] NULL,
 CONSTRAINT [PK_delegation_authority] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[disbursement_information]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disbursement_information](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[disbursed_date] [datetime] NULL,
	[disbursed_amount] [decimal](18, 4) NULL,
	[loan_account_number] [nvarchar](50) NULL,
	[fk_application_information_id] [int] NOT NULL,
	[fk_m_customer_relationship_id] [int] NULL,
 CONSTRAINT [PK_disbursement_information] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[frm_black_list_code]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[frm_black_list_code](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[code] [nvarchar](50) NULL,
	[setup_team] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[checker_date] [datetime] NULL,
	[checker_by] [nvarchar](50) NULL,
 CONSTRAINT [PK_frm_black_list_code] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[frm_black_list_company]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[frm_black_list_company](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_m_company_code_id] [int] NULL,
	[owner_name] [nvarchar](500) NULL,
	[owner_id] [nvarchar](50) NULL,
	[date_black_list] [datetime2](7) NULL,
	[black_list_code] [nvarchar](50) NULL,
	[checker_date] [datetime] NULL,
	[checker_by] [nvarchar](50) NULL,
	[fk_frm_black_list_code_id] [int] NULL,
	[fk_application_information_id] [int] NULL,
 CONSTRAINT [PK_frm_black_list_company] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[frm_black_list_customer]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[frm_black_list_customer](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_customer_information_id] [int] NULL,
	[date_black_list] [datetime] NULL,
	[black_list_code] [nvarchar](50) NULL,
	[checker_date] [datetime] NULL,
	[checker_by] [nvarchar](50) NULL,
	[sales_pwid] [nvarchar](50) NULL,
	[company_code_rls] [nvarchar](50) NULL,
	[permanent_address] [nvarchar](500) NULL,
	[permanent_city] [nvarchar](500) NULL,
	[residence_address] [nvarchar](500) NULL,
	[mobile_number] [nvarchar](50) NULL,
	[office_phone] [nvarchar](50) NULL,
	[email_address] [nvarchar](50) NULL,
	[fk_application_information_id] [int] NULL,
	[fk_frm_black_list_code_id] [int] NULL,
 CONSTRAINT [PK_frm_black_list_customer] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[frm_black_list_log]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[frm_black_list_log](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[owner_name] [nvarchar](500) NULL,
	[owner_bank_id] [nvarchar](50) NULL,
	[investigation_result] [nvarchar](500) NULL,
	[fk_frm_black_list_code_id] [int] NULL,
 CONSTRAINT [PK_frm_black_list_log] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[frm_investigave]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[frm_investigave](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NULL,
	[fk_customer_information_id] [int] NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[LoanAmountApplied] [decimal](18, 4) NULL,
	[ReferedChannel] [nvarchar](50) NULL,
	[ReferedBy] [nvarchar](50) NULL,
	[ReferedDate] [datetime] NULL,
	[SuspiciousDocument] [nvarchar](2000) NULL,
	[InvestigatorResult] [nvarchar](500) NULL,
	[EmployeeInvolved] [nvarchar](500) NULL,
	[ExternalPartyInvolved] [nvarchar](500) NULL,
	[SignificantFraud] [nvarchar](50) NULL,
	[SummaryInvestigation] [nvarchar](2000) NULL,
	[Finndings] [nvarchar](2000) NULL,
	[InvestigationResult] [nvarchar](50) NULL,
	[DecisionDate] [datetime] NULL,
	[DecisionCode] [nvarchar](50) NULL,
	[CheckerDate] [datetime] NULL,
	[CheckerBy] [nvarchar](50) NULL,
	[fk_m_investigave_type_id] [int] NULL,
 CONSTRAINT [PK_frm_investigave] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[frm_investigave_file]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[frm_investigave_file](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_frm_investigave_id] [int] NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[file_type] [nvarchar](50) NULL,
	[file_name] [nvarchar](500) NULL,
	[refered_channel] [nvarchar](50) NULL,
 CONSTRAINT [PK_frm_investigave_file] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_bank_holiday]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_bank_holiday](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[bank_holiday] [datetime] NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_bank_holiday] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_bank_type]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_bank_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_bank_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_bonus_type]    Script Date: 6/22/2018 5:30:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_bonus_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_bonus_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_borrower_type]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_borrower_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_borrower_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_branch_code]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_branch_code](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_branch_code] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_branch_location]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_branch_location](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_branch_location] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_business_nature]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_business_nature](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_business_nature] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_business_type]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_business_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_business_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_campaign_code]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_campaign_code](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_campaign_code] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_cdd]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_cdd](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_cdd] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_cic]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_cic](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_cic] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_city]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_city](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_city] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_commision_type]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_commision_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_commision_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_company_code]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_company_code](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[company_code] [nvarchar](50) NULL,
	[company_address] [nvarchar](500) NULL,
	[company_ward] [nvarchar](500) NULL,
	[fk_company_district_id] [int] NULL,
	[fk_company_city_id] [int] NULL,
	[company_phone] [nvarchar](50) NULL,
	[company_fax] [nvarchar](50) NULL,
	[company_name_vn] [nvarchar](500) NULL,
	[fk_m_company_type_id] [int] NULL,
	[company_cat] [nvarchar](50) NULL,
	[tax_code] [nvarchar](50) NULL,
	[business_license] [nvarchar](50) NULL,
	[note] [nvarchar](500) NULL,
	[processed_date] [datetime] NULL,
	[processed_by] [nvarchar](50) NULL,
	[is_promotion] [bit] NULL,
	[rate_offer] [decimal](18, 4) NULL,
	[effective_from_date] [datetime] NULL,
	[effective_to_date] [datetime] NULL,
	[remarks] [nvarchar](500) NULL,
	[fk_reason_company_id] [int] NULL,
	[company_short_name] [nvarchar](500) NULL,
	[business_registration_number] [nvarchar](50) NULL,
	[date_of_incorporate] [datetime] NULL,
	[latest_date_update_on_business_license] [nvarchar](50) NULL,
	[number_of_change] [int] NULL,
	[fk_m_business_nature_id] [int] NULL,
	[fk_m_customer_relationship_id] [int] NULL,
	[fk_m_industry_id] [int] NULL,
	[total_months_in_operation] [int] NULL,
	[registered_capital] [decimal](18, 4) NULL,
	[number_of_banks_usage] [int] NULL,
	[billing_address] [nvarchar](500) NULL,
	[tax_number] [nvarchar](50) NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_company_code] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_company_type]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_company_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_company_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_credit_bureau_type]    Script Date: 6/22/2018 5:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_credit_bureau_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_credit_bureau_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_credit_deviation]    Script Date: 6/22/2018 5:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_credit_deviation](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_credit_deviation] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_criteria]    Script Date: 6/22/2018 5:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_criteria](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_criteria] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_current_resident_type]    Script Date: 6/22/2018 5:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_current_resident_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_current_resident_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_custody_type]    Script Date: 6/22/2018 5:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_custody_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_custody_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_customer_relationship]    Script Date: 6/22/2018 5:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_customer_relationship](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_customer_relationship] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_customer_segment]    Script Date: 6/22/2018 5:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_customer_segment](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_customer_segment] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_customer_type]    Script Date: 6/22/2018 5:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_customer_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_customer_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_definition_type]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_definition_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[fk_group_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[valid_from_date] [datetime] NULL,
	[valid_to_date] [datetime] NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](50) NULL,
 CONSTRAINT [PK_m_definition_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_deviation_code]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_deviation_code](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_deviation_code] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_disbursal_scenario]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_disbursal_scenario](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[scenario_en] [nvarchar](4000) NULL,
	[scenario_vn] [nvarchar](4000) NULL,
	[fk_loan_type_id] [int] NULL,
	[description] [nvarchar](500) NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_disbursal_scenario] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_disbursal_scenario_condition]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_disbursal_scenario_condition](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_m_disbursal_scenario_id] [int] NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[pre_condition] [nvarchar](4000) NULL,
	[in_condition] [nvarchar](4000) NULL,
	[post_condition] [nvarchar](4000) NULL,
	[pre_condition_vn] [nvarchar](4000) NULL,
	[in_condition_vn] [nvarchar](4000) NULL,
	[post_condition_vn] [nvarchar](4000) NULL,
	[other_info_required] [int] NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_disbursal_scenario_condition] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_district]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_district](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_city_id] [int] NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_district] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_duplication_type]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_duplication_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_duplication_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_education]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_education](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_education] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_employment_type]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_employment_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_employment_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_floating_interest_rate]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_floating_interest_rate](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[value] [decimal](18, 4) NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_floating_interest_rate] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_group]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_group](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_type_id] [int] NULL,
 CONSTRAINT [PK_m_group] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_identification_type]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_identification_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_identification_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_income_type]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_income_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_income_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_industry]    Script Date: 6/22/2018 5:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_industry](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_industry] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_interest_classification]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_interest_classification](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_interest_classification] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_investigave_type]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_investigave_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_investigave_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_labour_contract_type]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_labour_contract_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_labour_contract_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_loan_purpose]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_loan_purpose](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_loan_purpose] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_loan_tenor]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_loan_tenor](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[value] [int] NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_loan_tenor] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_loan_trend]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_loan_trend](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_loan_trend] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_loan_type]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_loan_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_loan_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_marital_status]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_marital_status](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_marital_status] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_message]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_message](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[subject] [nvarchar](500) NULL,
	[content] [nvarchar](max) NULL,
	[solution] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_message_type_id] [int] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_message] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_message_type]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_message_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
	[code] [nvarchar](50) NULL,
 CONSTRAINT [PK_m_message_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_nationality]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_nationality](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_nationality] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_occupation]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_occupation](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_occupation] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_ownership_type]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_ownership_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_ownership_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_payment_method]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_payment_method](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_payment_method] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_payment_option]    Script Date: 6/22/2018 5:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_payment_option](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_payment_option] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_payment_type]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_payment_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_payment_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_position]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_position](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_position] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_product]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_product](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_product] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_product_type]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_product_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_product_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_program_code]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_program_code](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_program_code] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_program_type]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_program_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_program_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_property_sale]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_property_sale](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_property_sale] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_property_status]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_property_status](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_property_status] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_property_type]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_property_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_property_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_reason]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_reason](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[type] [nvarchar](50) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_reason] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_reports]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_reports](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[fk_group_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[valid_from_date] [datetime] NOT NULL,
	[valid_to_date] [datetime] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [nvarchar](50) NOT NULL,
	[template_url] [nvarchar](500) NULL,
	[export_url] [nvarchar](500) NULL,
	[archive_url] [nvarchar](500) NULL,
	[store_procedures] [nvarchar](50) NULL,
	[is_export_excel] [bit] NULL,
	[is_export_csv] [bit] NULL,
	[is_export_word] [bit] NULL,
	[is_export_pdf] [bit] NULL,
	[is_chart] [bit] NULL,
	[is_export] [bit] NULL,
 CONSTRAINT [PK_m_reports] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_residence_ownership]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_residence_ownership](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_residence_ownership] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_sales_channel]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_sales_channel](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_sales_channel] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_setting_equal]    Script Date: 6/22/2018 5:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_setting_equal](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[value] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[fk_group_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[valid_from_date] [datetime] NOT NULL,
	[valid_to_date] [datetime] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_m_setting_equal] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_setting_limit]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_setting_limit](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[from_value] [decimal](18, 4) NULL,
	[to_value] [decimal](18, 4) NULL,
	[value] [decimal](18, 4) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[fk_group_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[valid_from_date] [datetime] NOT NULL,
	[valid_to_date] [datetime] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_m_setting_limit] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_status]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_status](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_product_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_group_id] [int] NULL,
 CONSTRAINT [PK_m_status] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_trading_area]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_trading_area](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_m_group_id] [int] NULL,
 CONSTRAINT [PK_m_trading_area] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_type]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_type](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_m_type] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_verifier_form]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_verifier_form](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_customer_information_id] [int] NOT NULL,
	[fk_verified_area_id] [int] NULL,
	[fk_verified_occupation_id] [int] NULL,
	[fk_verified_position_id] [int] NULL,
	[app_mobile_attempts] [int] NULL,
	[app_mobile_check_date] [datetime] NULL,
	[app_mobile_check_time] [time](7) NULL,
	[home_fixed_attempts] [int] NULL,
	[home_fixed_check_date] [datetime] NULL,
	[home_fixed_check_time] [time](7) NULL,
	[emp_fixed_attempts] [int] NULL,
	[emp_fixed_check_date] [datetime] NULL,
	[emp_fixed_check_time] [time](7) NULL,
	[self_emp_attemptss] [int] NULL,
	[self_emp_check_date] [datetime] NULL,
	[self_emp_check_time] [time](7) NULL,
	[mobile_fixed_attempts] [int] NULL,
	[mobile_fixed_check_date] [datetime] NULL,
	[mobile_fixed_check_time] [time](7) NULL,
	[salary_by_bank] [decimal](18, 4) NULL,
	[salary_by_cash] [decimal](18, 4) NULL,
	[bank_name] [nvarchar](500) NULL,
	[salary_customer_often] [decimal](24, 2) NULL,
	[salary_customer_on_date] [datetime] NULL,
	[salary_amount] [decimal](18, 4) NULL,
	[check_result_date] [datetime] NULL,
	[check_result_pass] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](50) NULL,
	[fk_loan_type_id] [int] NULL,
	[is_sms_send] [bit] NULL,
	[remarks] [nvarchar](2000) NULL,
	[fk_cust_bank_type_id] [int] NULL,
	[labour_contract_term] [int] NULL,
	[labour_contract_remark] [nvarchar](2000) NULL,
	[join_date] [datetime] NULL,
	[joint_date_remarks] [nvarchar](2000) NULL,
	[fk_application_information_id] [int] NULL,
 CONSTRAINT [PK_telephone_verifier_form] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_verifier_form_contact]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_verifier_form_contact](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_telephone_verifier_form_id] [int] NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[fk_customer_information_id] [int] NOT NULL,
	[seq] [bit] NOT NULL,
	[contact_no] [nvarchar](50) NULL,
	[source_internal] [bit] NULL,
	[yellow_page] [bit] NULL,
	[operator_telephone] [bit] NULL,
	[website] [bit] NULL,
	[able_to_contact] [bit] NULL,
	[answered_call] [nvarchar](200) NULL,
	[confirm_information] [bit] NULL,
	[contact_type] [nvarchar](50) NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](50) NULL,
 CONSTRAINT [PK_telephone_verifier_form_contact] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verification_attempts]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verification_attempts](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_verification_id] [int] NULL,
	[attempts_type] [varchar](50) NULL,
	[no_of_attempts] [varchar](50) NULL,
	[checking_date] [datetime] NULL,
	[checking_time] [time](7) NULL,
 CONSTRAINT [PK_verification_attempts] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verification_form]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verification_form](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[is_telephone_verify] [bit] NULL,
	[checked_by] [nvarchar](50) NULL,
	[date_checking] [datetime] NULL,
	[client_address] [nvarchar](500) NULL,
	[perm_address] [nvarchar](50) NULL,
	[time_at_current_address] [int] NULL,
	[company_address] [nvarchar](200) NULL,
	[card_no_and_pin] [nvarchar](200) NULL,
	[card_no] [nvarchar](100) NULL,
	[card_no_remark] [nvarchar](100) NULL,
	[pin] [nvarchar](100) NULL,
	[pin_remak] [nvarchar](100) NULL,
	[is_apply_pl] [bit] NULL,
	[is_apply_other_bank] [bit] NULL,
	[salary_received_by_bank_statement] [decimal](18, 4) NULL,
	[salary_received_by_cash] [decimal](18, 4) NULL,
	[bank_name] [nvarchar](500) NULL,
	[salary_customer] [decimal](24, 6) NULL,
	[salary_on_date] [nvarchar](50) NULL,
	[salary_amount] [decimal](24, 6) NULL,
	[result_dated] [datetime] NULL,
	[result_status] [nvarchar](150) NULL,
	[verified_area] [nvarchar](150) NULL,
	[verifedOccupation] [nvarchar](150) NULL,
	[verified_position] [nvarchar](150) NULL,
	[new_to_bank_or_existing] [nvarchar](150) NULL,
	[is_send_sms] [bit] NULL,
	[remark] [nvarchar](1500) NULL,
	[updated_by] [nvarchar](50) NULL,
	[updated_date] [datetime] NULL,
	[is_upload] [bit] NULL,
	[upload_file] [nvarchar](500) NULL,
	[out_source_verify_name] [nvarchar](500) NULL,
	[telephone_action] [nvarchar](50) NULL,
 CONSTRAINT [PK_verification_form] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verification_loan]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verification_loan](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_verification_form_id] [int] NOT NULL,
	[source] [nvarchar](50) NULL,
	[product] [nvarchar](50) NULL,
	[secured_type] [nvarchar](50) NULL,
	[group_loan] [nvarchar](50) NULL,
	[bank_name] [nvarchar](500) NULL,
	[initial_loan] [decimal](18, 4) NULL,
	[fk_m_tenor_id] [int] NULL,
	[interest_rate] [decimal](18, 4) NULL,
	[outstading] [decimal](24, 6) NULL,
	[emi] [decimal](24, 6) NULL,
	[is_scb] [bit] NULL,
	[is_auto_calculate_emi] [bit] NULL,
 CONSTRAINT [PK_verification_loan] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verification_phone]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verification_phone](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[fk_verification_id] [int] NULL,
	[phone_type] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NULL,
	[is_source_internal] [bit] NULL,
	[is_yellow_page] [bit] NULL,
	[is_operator] [bit] NULL,
	[is_website] [bit] NULL,
	[is_able_to_contact] [bit] NULL,
	[who_answered] [nvarchar](50) NULL,
	[is_confimation] [int] NULL,
	[checking_date] [datetime] NULL,
	[checking_time] [time](7) NULL,
 CONSTRAINT [PK_verification_phone] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[watch_list]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[watch_list](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_application_information_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[is_active] [bit] NULL,
	[fk_type_id] [int] NULL,
	[fk_status_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[customer_name] [nvarchar](128) NULL,
	[previous_no] [nvarchar](50) NULL,
	[personal_no] [nvarchar](50) NULL,
	[passport_no] [nvarchar](50) NULL,
	[social_no] [nvarchar](50) NULL,
	[dob] [datetime] NULL,
	[company_code_rls] [nvarchar](50) NULL,
	[permanent_address] [nvarchar](256) NULL,
	[permanent_city] [nvarchar](256) NULL,
	[residence_address] [nvarchar](256) NULL,
	[all_mobile_number] [nvarchar](256) NULL,
	[office_phone] [nvarchar](256) NULL,
	[bureau_status] [nvarchar](50) NULL,
	[bank_name_existing_loan_card] [nvarchar](256) NULL,
	[email_address] [nvarchar](50) NULL,
	[arm_code] [nvarchar](50) NULL,
	[reject_reason] [nvarchar](256) NULL,
	[source_of_reject] [nvarchar](256) NULL,
	[cic_checked_by_scb_before] [nvarchar](256) NULL,
	[checker_by] [nvarchar](50) NULL,
	[checker_date] [datetime] NULL,
 CONSTRAINT [PK_watch_list] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[al_approval_information]  WITH CHECK ADD  CONSTRAINT [FK_al_approval_information_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_approval_information] CHECK CONSTRAINT [FK_al_approval_information_m_status]
GO
ALTER TABLE [dbo].[al_approval_information]  WITH CHECK ADD  CONSTRAINT [FK_al_approval_information_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_approval_information] CHECK CONSTRAINT [FK_al_approval_information_m_type]
GO
ALTER TABLE [dbo].[al_car_dealer]  WITH CHECK ADD  CONSTRAINT [FK_al_car_dealer_m_city] FOREIGN KEY([fk_car_dealer_city_id])
REFERENCES [dbo].[m_city] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_dealer] CHECK CONSTRAINT [FK_al_car_dealer_m_city]
GO
ALTER TABLE [dbo].[al_car_dealer]  WITH CHECK ADD  CONSTRAINT [FK_al_car_dealer_m_district] FOREIGN KEY([fk_car_dealer_district_id])
REFERENCES [dbo].[m_district] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_dealer] CHECK CONSTRAINT [FK_al_car_dealer_m_district]
GO
ALTER TABLE [dbo].[al_car_dealer]  WITH CHECK ADD  CONSTRAINT [FK_al_car_dealer_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_dealer] CHECK CONSTRAINT [FK_al_car_dealer_m_status]
GO
ALTER TABLE [dbo].[al_car_dealer]  WITH CHECK ADD  CONSTRAINT [FK_al_car_dealer_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_dealer] CHECK CONSTRAINT [FK_al_car_dealer_m_type]
GO
ALTER TABLE [dbo].[al_car_marker_brand]  WITH CHECK ADD  CONSTRAINT [FK_al_car_marker_brand_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_marker_brand] CHECK CONSTRAINT [FK_al_car_marker_brand_m_status]
GO
ALTER TABLE [dbo].[al_car_marker_brand]  WITH CHECK ADD  CONSTRAINT [FK_al_car_marker_brand_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_marker_brand] CHECK CONSTRAINT [FK_al_car_marker_brand_m_type]
GO
ALTER TABLE [dbo].[al_car_model]  WITH CHECK ADD  CONSTRAINT [FK_al_car_model_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_model] CHECK CONSTRAINT [FK_al_car_model_m_status]
GO
ALTER TABLE [dbo].[al_car_model]  WITH CHECK ADD  CONSTRAINT [FK_al_car_model_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_model] CHECK CONSTRAINT [FK_al_car_model_m_type]
GO
ALTER TABLE [dbo].[al_car_sales_information]  WITH CHECK ADD  CONSTRAINT [FK_al_car_sales_information_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_sales_information] CHECK CONSTRAINT [FK_al_car_sales_information_m_status]
GO
ALTER TABLE [dbo].[al_car_sales_information]  WITH CHECK ADD  CONSTRAINT [FK_al_car_sales_information_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_sales_information] CHECK CONSTRAINT [FK_al_car_sales_information_m_type]
GO
ALTER TABLE [dbo].[al_car_source]  WITH CHECK ADD  CONSTRAINT [FK_al_car_source_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_source] CHECK CONSTRAINT [FK_al_car_source_m_status]
GO
ALTER TABLE [dbo].[al_car_source]  WITH CHECK ADD  CONSTRAINT [FK_al_car_source_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_source] CHECK CONSTRAINT [FK_al_car_source_m_type]
GO
ALTER TABLE [dbo].[al_car_type]  WITH CHECK ADD  CONSTRAINT [FK_al_car_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_type] CHECK CONSTRAINT [FK_al_car_type_m_status]
GO
ALTER TABLE [dbo].[al_car_type]  WITH CHECK ADD  CONSTRAINT [FK_al_car_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_car_type] CHECK CONSTRAINT [FK_al_car_type_m_type]
GO
ALTER TABLE [dbo].[al_customer_credit_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_credit_bureau_al_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[al_customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_credit_bureau] CHECK CONSTRAINT [FK_al_customer_credit_bureau_al_customer_information]
GO
ALTER TABLE [dbo].[al_customer_credit_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_credit_bureau_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_credit_bureau] CHECK CONSTRAINT [FK_al_customer_credit_bureau_application_information]
GO
ALTER TABLE [dbo].[al_customer_credit_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_credit_bureau_m_credit_bureau_type] FOREIGN KEY([fk_m_credit_bureau_type_id])
REFERENCES [dbo].[m_credit_bureau_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_credit_bureau] CHECK CONSTRAINT [FK_al_customer_credit_bureau_m_credit_bureau_type]
GO
ALTER TABLE [dbo].[al_customer_information]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_information_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_information] CHECK CONSTRAINT [FK_al_customer_information_m_status]
GO
ALTER TABLE [dbo].[al_customer_information]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_information_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_information] CHECK CONSTRAINT [FK_al_customer_information_m_type]
GO
ALTER TABLE [dbo].[al_customer_other_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_other_income_al_customer_information] FOREIGN KEY([fk_m_income_type_id])
REFERENCES [dbo].[m_income_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_other_income] CHECK CONSTRAINT [FK_al_customer_other_income_al_customer_information]
GO
ALTER TABLE [dbo].[al_customer_other_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_other_income_al_customer_other_income] FOREIGN KEY([pk_id])
REFERENCES [dbo].[al_customer_other_income] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_other_income] CHECK CONSTRAINT [FK_al_customer_other_income_al_customer_other_income]
GO
ALTER TABLE [dbo].[al_customer_other_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_other_income_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_other_income] CHECK CONSTRAINT [FK_al_customer_other_income_application_information]
GO
ALTER TABLE [dbo].[al_customer_other_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_other_income_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_other_income] CHECK CONSTRAINT [FK_al_customer_other_income_customer_information]
GO
ALTER TABLE [dbo].[al_customer_other_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_other_income_m_borrower_type] FOREIGN KEY([fk_m_borrower_type_id])
REFERENCES [dbo].[m_borrower_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_other_income] CHECK CONSTRAINT [FK_al_customer_other_income_m_borrower_type]
GO
ALTER TABLE [dbo].[al_customer_other_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_other_income_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_other_income] CHECK CONSTRAINT [FK_al_customer_other_income_m_status]
GO
ALTER TABLE [dbo].[al_customer_other_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_other_income_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_other_income] CHECK CONSTRAINT [FK_al_customer_other_income_m_type]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_al_customer_salaried_income] FOREIGN KEY([fk_m_occupation_id])
REFERENCES [dbo].[m_occupation] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_al_customer_salaried_income]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_application_information]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_customer_information]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_borrower_type] FOREIGN KEY([fk_m_borrower_type_id])
REFERENCES [dbo].[m_borrower_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_borrower_type]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_business_nature] FOREIGN KEY([fk_m_business_nature_id])
REFERENCES [dbo].[m_business_nature] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_business_nature]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_city] FOREIGN KEY([fk_company_city_id])
REFERENCES [dbo].[m_city] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_city]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_city1] FOREIGN KEY([fk_working_city_id])
REFERENCES [dbo].[m_city] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_city1]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_district] FOREIGN KEY([fk_company_district_id])
REFERENCES [dbo].[m_district] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_district]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_district1] FOREIGN KEY([fk_working_district_id])
REFERENCES [dbo].[m_district] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_district1]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_employment_type] FOREIGN KEY([fk_m_employment_type_id])
REFERENCES [dbo].[m_employment_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_employment_type]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_industry] FOREIGN KEY([fk_m_industry_id])
REFERENCES [dbo].[m_industry] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_industry]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_labour_contract_type] FOREIGN KEY([fk_m_labour_contract_type_id])
REFERENCES [dbo].[m_labour_contract_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_labour_contract_type]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_position] FOREIGN KEY([fk_m_position_id])
REFERENCES [dbo].[m_position] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_position]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_status]
GO
ALTER TABLE [dbo].[al_customer_salaried_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_salaried_income_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_salaried_income] CHECK CONSTRAINT [FK_al_customer_salaried_income_m_type]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_al_customer_information] FOREIGN KEY([fk_al_customer_information_id])
REFERENCES [dbo].[al_customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_al_customer_information]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_application_information]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_customer_information]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_borrower_type] FOREIGN KEY([fk_m_borrower_type_id])
REFERENCES [dbo].[m_borrower_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_borrower_type]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_city] FOREIGN KEY([fk_company_city_id])
REFERENCES [dbo].[m_city] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_city]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_district] FOREIGN KEY([fk_company_district_id])
REFERENCES [dbo].[m_district] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_district]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_employment_type] FOREIGN KEY([fk_type_of_self_employment_income_id])
REFERENCES [dbo].[m_employment_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_employment_type]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_income_type] FOREIGN KEY([fk_m_income_type_id])
REFERENCES [dbo].[m_income_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_income_type]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_industry] FOREIGN KEY([fk_other_company_industry_id])
REFERENCES [dbo].[m_industry] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_industry]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_industry1] FOREIGN KEY([fk_main_company_industry_1_id])
REFERENCES [dbo].[m_industry] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_industry1]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_industry2] FOREIGN KEY([fk_main_company_industry_2_id])
REFERENCES [dbo].[m_industry] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_industry2]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_industry3] FOREIGN KEY([fk_seasonal_industry_id])
REFERENCES [dbo].[m_industry] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_industry3]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_status]
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income]  WITH CHECK ADD  CONSTRAINT [FK_al_customer_seft_employed_income_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_customer_seft_employed_income] CHECK CONSTRAINT [FK_al_customer_seft_employed_income_m_type]
GO
ALTER TABLE [dbo].[al_disbursement_information]  WITH CHECK ADD  CONSTRAINT [FK_al_disbursement_information_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_disbursement_information] CHECK CONSTRAINT [FK_al_disbursement_information_application_information]
GO
ALTER TABLE [dbo].[al_disbursement_information]  WITH CHECK ADD  CONSTRAINT [FK_al_disbursement_information_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_disbursement_information] CHECK CONSTRAINT [FK_al_disbursement_information_m_status]
GO
ALTER TABLE [dbo].[al_disbursement_information]  WITH CHECK ADD  CONSTRAINT [FK_al_disbursement_information_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_disbursement_information] CHECK CONSTRAINT [FK_al_disbursement_information_m_type]
GO
ALTER TABLE [dbo].[al_loan_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_loan_bureau_al_customer_credit_bureau] FOREIGN KEY([fk_al_customer_credit_bureau_id])
REFERENCES [dbo].[al_customer_credit_bureau] ([pk_id])
GO
ALTER TABLE [dbo].[al_loan_bureau] CHECK CONSTRAINT [FK_al_loan_bureau_al_customer_credit_bureau]
GO
ALTER TABLE [dbo].[al_loan_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_loan_bureau_application_information] FOREIGN KEY([pk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_loan_bureau] CHECK CONSTRAINT [FK_al_loan_bureau_application_information]
GO
ALTER TABLE [dbo].[al_loan_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_loan_bureau_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_loan_bureau] CHECK CONSTRAINT [FK_al_loan_bureau_customer_information]
GO
ALTER TABLE [dbo].[al_loan_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_loan_bureau_m_loan_tenor] FOREIGN KEY([fk_m_tenor_id])
REFERENCES [dbo].[m_loan_tenor] ([pk_id])
GO
ALTER TABLE [dbo].[al_loan_bureau] CHECK CONSTRAINT [FK_al_loan_bureau_m_loan_tenor]
GO
ALTER TABLE [dbo].[al_loan_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_loan_bureau_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_loan_bureau] CHECK CONSTRAINT [FK_al_loan_bureau_m_status]
GO
ALTER TABLE [dbo].[al_loan_bureau]  WITH CHECK ADD  CONSTRAINT [FK_al_loan_bureau_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_loan_bureau] CHECK CONSTRAINT [FK_al_loan_bureau_m_type]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_al_car_dealer] FOREIGN KEY([fk_al_car_dealer_id])
REFERENCES [dbo].[al_car_dealer] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_al_car_dealer]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_al_car_marker_brand] FOREIGN KEY([fk_al_car_marker_brand_id])
REFERENCES [dbo].[al_car_marker_brand] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_al_car_marker_brand]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_al_car_model] FOREIGN KEY([fk_al_car_model_id])
REFERENCES [dbo].[al_car_model] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_al_car_model]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_al_car_source] FOREIGN KEY([fk_al_car_source_id])
REFERENCES [dbo].[al_car_source] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_al_car_source]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_al_car_type] FOREIGN KEY([fk_al_car_type_id])
REFERENCES [dbo].[al_car_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_al_car_type]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_application_information]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_m_campaign_code] FOREIGN KEY([fk_m_campaign_code_id])
REFERENCES [dbo].[m_campaign_code] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_m_campaign_code]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_m_credit_deviation] FOREIGN KEY([fk_m_credit_deviation_id])
REFERENCES [dbo].[m_credit_deviation] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_m_credit_deviation]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_m_floating_interest_rate] FOREIGN KEY([fk_m_floating_interest_rate_id])
REFERENCES [dbo].[m_floating_interest_rate] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_m_floating_interest_rate]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_m_loan_purpose] FOREIGN KEY([fk_m_loan_purpose_id])
REFERENCES [dbo].[m_loan_purpose] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_m_loan_purpose]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_m_loan_tenor] FOREIGN KEY([fk_m_loan_tenor_id])
REFERENCES [dbo].[m_loan_tenor] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_m_loan_tenor]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_m_program_type] FOREIGN KEY([fk_m_program_type_id])
REFERENCES [dbo].[m_program_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_m_program_type]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_m_property_status] FOREIGN KEY([fk_m_property_status_id])
REFERENCES [dbo].[m_property_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_m_property_status]
GO
ALTER TABLE [dbo].[al_personal_application]  WITH CHECK ADD  CONSTRAINT [FK_al_personal_application_m_reason] FOREIGN KEY([fk_m_reason_for_deviation_id])
REFERENCES [dbo].[m_reason] ([pk_id])
GO
ALTER TABLE [dbo].[al_personal_application] CHECK CONSTRAINT [FK_al_personal_application_m_reason]
GO
ALTER TABLE [dbo].[al_rework]  WITH CHECK ADD  CONSTRAINT [FK_al_rework_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_rework] CHECK CONSTRAINT [FK_al_rework_application_information]
GO
ALTER TABLE [dbo].[al_rework]  WITH CHECK ADD  CONSTRAINT [FK_al_rework_m_reason] FOREIGN KEY([fk_m_rework_reason_id])
REFERENCES [dbo].[m_reason] ([pk_id])
GO
ALTER TABLE [dbo].[al_rework] CHECK CONSTRAINT [FK_al_rework_m_reason]
GO
ALTER TABLE [dbo].[al_rework]  WITH CHECK ADD  CONSTRAINT [FK_al_rework_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_rework] CHECK CONSTRAINT [FK_al_rework_m_status]
GO
ALTER TABLE [dbo].[al_rework]  WITH CHECK ADD  CONSTRAINT [FK_al_rework_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_rework] CHECK CONSTRAINT [FK_al_rework_m_type]
GO
ALTER TABLE [dbo].[al_tat_logs]  WITH CHECK ADD  CONSTRAINT [FK_al_tat_logs_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_tat_logs] CHECK CONSTRAINT [FK_al_tat_logs_application_information]
GO
ALTER TABLE [dbo].[al_tat_logs]  WITH CHECK ADD  CONSTRAINT [FK_al_tat_logs_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_tat_logs] CHECK CONSTRAINT [FK_al_tat_logs_m_status]
GO
ALTER TABLE [dbo].[al_tat_logs]  WITH CHECK ADD  CONSTRAINT [FK_al_tat_logs_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_tat_logs] CHECK CONSTRAINT [FK_al_tat_logs_m_type]
GO
ALTER TABLE [dbo].[al_wealth_demonstration]  WITH CHECK ADD  CONSTRAINT [FK_al_wealth_demonstration_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[al_wealth_demonstration] CHECK CONSTRAINT [FK_al_wealth_demonstration_application_information]
GO
ALTER TABLE [dbo].[al_wealth_demonstration]  WITH CHECK ADD  CONSTRAINT [FK_al_wealth_demonstration_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[al_wealth_demonstration] CHECK CONSTRAINT [FK_al_wealth_demonstration_m_status]
GO
ALTER TABLE [dbo].[al_wealth_demonstration]  WITH CHECK ADD  CONSTRAINT [FK_al_wealth_demonstration_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[al_wealth_demonstration] CHECK CONSTRAINT [FK_al_wealth_demonstration_m_type]
GO
ALTER TABLE [dbo].[application_customer]  WITH CHECK ADD  CONSTRAINT [FK_application_customer_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[application_customer] CHECK CONSTRAINT [FK_application_customer_m_status]
GO
ALTER TABLE [dbo].[application_customer]  WITH CHECK ADD  CONSTRAINT [FK_application_customer_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[application_customer] CHECK CONSTRAINT [FK_application_customer_m_type]
GO
ALTER TABLE [dbo].[application_duplication]  WITH CHECK ADD  CONSTRAINT [FK_application_duplication_application_information] FOREIGN KEY([fk_application_information_duplication_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[application_duplication] CHECK CONSTRAINT [FK_application_duplication_application_information]
GO
ALTER TABLE [dbo].[application_duplication]  WITH CHECK ADD  CONSTRAINT [FK_application_duplication_application_information1] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[application_duplication] CHECK CONSTRAINT [FK_application_duplication_application_information1]
GO
ALTER TABLE [dbo].[application_duplication]  WITH CHECK ADD  CONSTRAINT [FK_application_duplication_m_duplication_type] FOREIGN KEY([fk_m_duplication_type_id])
REFERENCES [dbo].[m_duplication_type] ([pk_id])
GO
ALTER TABLE [dbo].[application_duplication] CHECK CONSTRAINT [FK_application_duplication_m_duplication_type]
GO
ALTER TABLE [dbo].[application_duplication]  WITH CHECK ADD  CONSTRAINT [FK_application_duplication_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[application_duplication] CHECK CONSTRAINT [FK_application_duplication_m_status]
GO
ALTER TABLE [dbo].[application_duplication]  WITH CHECK ADD  CONSTRAINT [FK_application_duplication_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[application_duplication] CHECK CONSTRAINT [FK_application_duplication_m_type]
GO
ALTER TABLE [dbo].[approval_information]  WITH CHECK ADD  CONSTRAINT [FK_approval_information_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[approval_information] CHECK CONSTRAINT [FK_approval_information_application_information]
GO
ALTER TABLE [dbo].[approval_information]  WITH CHECK ADD  CONSTRAINT [FK_approval_information_m_reason] FOREIGN KEY([fk_reject_reason_id])
REFERENCES [dbo].[m_reason] ([pk_id])
GO
ALTER TABLE [dbo].[approval_information] CHECK CONSTRAINT [FK_approval_information_m_reason]
GO
ALTER TABLE [dbo].[approval_information]  WITH CHECK ADD  CONSTRAINT [FK_approval_information_m_reason1] FOREIGN KEY([fk_cancel_reason_id])
REFERENCES [dbo].[m_reason] ([pk_id])
GO
ALTER TABLE [dbo].[approval_information] CHECK CONSTRAINT [FK_approval_information_m_reason1]
GO
ALTER TABLE [dbo].[approval_information]  WITH CHECK ADD  CONSTRAINT [FK_approval_information_m_reason2] FOREIGN KEY([fk_send_back_reason_id])
REFERENCES [dbo].[m_reason] ([pk_id])
GO
ALTER TABLE [dbo].[approval_information] CHECK CONSTRAINT [FK_approval_information_m_reason2]
GO
ALTER TABLE [dbo].[approval_information]  WITH CHECK ADD  CONSTRAINT [FK_approval_information_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[approval_information] CHECK CONSTRAINT [FK_approval_information_m_status]
GO
ALTER TABLE [dbo].[approval_information]  WITH CHECK ADD  CONSTRAINT [FK_approval_information_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[approval_information] CHECK CONSTRAINT [FK_approval_information_m_type]
GO
ALTER TABLE [dbo].[customer_identification]  WITH CHECK ADD  CONSTRAINT [FK_customer_identification_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[customer_identification] CHECK CONSTRAINT [FK_customer_identification_customer_information]
GO
ALTER TABLE [dbo].[customer_income]  WITH CHECK ADD  CONSTRAINT [FK_customer_income_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[customer_income] CHECK CONSTRAINT [FK_customer_income_application_information]
GO
ALTER TABLE [dbo].[customer_income]  WITH CHECK ADD  CONSTRAINT [FK_customer_income_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[customer_income] CHECK CONSTRAINT [FK_customer_income_customer_information]
GO
ALTER TABLE [dbo].[disbursement_information]  WITH CHECK ADD  CONSTRAINT [FK_disbursement_information_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[disbursement_information] CHECK CONSTRAINT [FK_disbursement_information_application_information]
GO
ALTER TABLE [dbo].[disbursement_information]  WITH CHECK ADD  CONSTRAINT [FK_disbursement_information_m_customer_relationship] FOREIGN KEY([fk_m_customer_relationship_id])
REFERENCES [dbo].[m_customer_relationship] ([pk_id])
GO
ALTER TABLE [dbo].[disbursement_information] CHECK CONSTRAINT [FK_disbursement_information_m_customer_relationship]
GO
ALTER TABLE [dbo].[disbursement_information]  WITH CHECK ADD  CONSTRAINT [FK_disbursement_information_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[disbursement_information] CHECK CONSTRAINT [FK_disbursement_information_m_status]
GO
ALTER TABLE [dbo].[disbursement_information]  WITH CHECK ADD  CONSTRAINT [FK_disbursement_information_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[disbursement_information] CHECK CONSTRAINT [FK_disbursement_information_m_type]
GO
ALTER TABLE [dbo].[frm_black_list_code]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_code_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_code] CHECK CONSTRAINT [FK_frm_black_list_code_m_status]
GO
ALTER TABLE [dbo].[frm_black_list_code]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_code_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_code] CHECK CONSTRAINT [FK_frm_black_list_code_m_type]
GO
ALTER TABLE [dbo].[frm_black_list_company]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_company_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_company] CHECK CONSTRAINT [FK_frm_black_list_company_application_information]
GO
ALTER TABLE [dbo].[frm_black_list_company]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_company_frm_black_list_code] FOREIGN KEY([fk_frm_black_list_code_id])
REFERENCES [dbo].[frm_black_list_code] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_company] CHECK CONSTRAINT [FK_frm_black_list_company_frm_black_list_code]
GO
ALTER TABLE [dbo].[frm_black_list_company]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_company_m_company_code] FOREIGN KEY([fk_m_company_code_id])
REFERENCES [dbo].[m_company_code] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_company] CHECK CONSTRAINT [FK_frm_black_list_company_m_company_code]
GO
ALTER TABLE [dbo].[frm_black_list_company]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_company_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_company] CHECK CONSTRAINT [FK_frm_black_list_company_m_status]
GO
ALTER TABLE [dbo].[frm_black_list_company]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_company_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_company] CHECK CONSTRAINT [FK_frm_black_list_company_m_type]
GO
ALTER TABLE [dbo].[frm_black_list_customer]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_customer_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_customer] CHECK CONSTRAINT [FK_frm_black_list_customer_application_information]
GO
ALTER TABLE [dbo].[frm_black_list_customer]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_customer_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_customer] CHECK CONSTRAINT [FK_frm_black_list_customer_customer_information]
GO
ALTER TABLE [dbo].[frm_black_list_customer]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_customer_frm_black_list_code] FOREIGN KEY([fk_frm_black_list_code_id])
REFERENCES [dbo].[frm_black_list_code] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_customer] CHECK CONSTRAINT [FK_frm_black_list_customer_frm_black_list_code]
GO
ALTER TABLE [dbo].[frm_black_list_customer]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_customer_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_customer] CHECK CONSTRAINT [FK_frm_black_list_customer_m_status]
GO
ALTER TABLE [dbo].[frm_black_list_customer]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_customer_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_customer] CHECK CONSTRAINT [FK_frm_black_list_customer_m_type]
GO
ALTER TABLE [dbo].[frm_black_list_log]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_log_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_log] CHECK CONSTRAINT [FK_frm_black_list_log_application_information]
GO
ALTER TABLE [dbo].[frm_black_list_log]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_log_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_log] CHECK CONSTRAINT [FK_frm_black_list_log_customer_information]
GO
ALTER TABLE [dbo].[frm_black_list_log]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_log_frm_black_list_code] FOREIGN KEY([fk_frm_black_list_code_id])
REFERENCES [dbo].[frm_black_list_code] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_log] CHECK CONSTRAINT [FK_frm_black_list_log_frm_black_list_code]
GO
ALTER TABLE [dbo].[frm_black_list_log]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_log_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_log] CHECK CONSTRAINT [FK_frm_black_list_log_m_status]
GO
ALTER TABLE [dbo].[frm_black_list_log]  WITH CHECK ADD  CONSTRAINT [FK_frm_black_list_log_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[frm_black_list_log] CHECK CONSTRAINT [FK_frm_black_list_log_m_type]
GO
ALTER TABLE [dbo].[frm_investigave]  WITH CHECK ADD  CONSTRAINT [FK_frm_investigave_application_information] FOREIGN KEY([fk_application_information_id])
REFERENCES [dbo].[application_information] ([pk_id])
GO
ALTER TABLE [dbo].[frm_investigave] CHECK CONSTRAINT [FK_frm_investigave_application_information]
GO
ALTER TABLE [dbo].[frm_investigave]  WITH CHECK ADD  CONSTRAINT [FK_frm_investigave_customer_information] FOREIGN KEY([fk_customer_information_id])
REFERENCES [dbo].[customer_information] ([pk_id])
GO
ALTER TABLE [dbo].[frm_investigave] CHECK CONSTRAINT [FK_frm_investigave_customer_information]
GO
ALTER TABLE [dbo].[frm_investigave]  WITH CHECK ADD  CONSTRAINT [FK_frm_investigave_m_investigave_type] FOREIGN KEY([fk_m_investigave_type_id])
REFERENCES [dbo].[m_investigave_type] ([pk_id])
GO
ALTER TABLE [dbo].[frm_investigave] CHECK CONSTRAINT [FK_frm_investigave_m_investigave_type]
GO
ALTER TABLE [dbo].[frm_investigave]  WITH CHECK ADD  CONSTRAINT [FK_frm_investigave_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[frm_investigave] CHECK CONSTRAINT [FK_frm_investigave_m_status]
GO
ALTER TABLE [dbo].[frm_investigave]  WITH CHECK ADD  CONSTRAINT [FK_frm_investigave_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[frm_investigave] CHECK CONSTRAINT [FK_frm_investigave_m_type]
GO
ALTER TABLE [dbo].[frm_investigave_file]  WITH CHECK ADD  CONSTRAINT [FK_frm_investigave_file_frm_investigave] FOREIGN KEY([pk_id])
REFERENCES [dbo].[frm_investigave] ([pk_id])
GO
ALTER TABLE [dbo].[frm_investigave_file] CHECK CONSTRAINT [FK_frm_investigave_file_frm_investigave]
GO
ALTER TABLE [dbo].[frm_investigave_file]  WITH CHECK ADD  CONSTRAINT [FK_frm_investigave_file_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[frm_investigave_file] CHECK CONSTRAINT [FK_frm_investigave_file_m_status]
GO
ALTER TABLE [dbo].[frm_investigave_file]  WITH CHECK ADD  CONSTRAINT [FK_frm_investigave_file_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[frm_investigave_file] CHECK CONSTRAINT [FK_frm_investigave_file_m_type]
GO
ALTER TABLE [dbo].[m_bank_holiday]  WITH CHECK ADD  CONSTRAINT [FK_m_bank_holiday_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_bank_holiday] CHECK CONSTRAINT [FK_m_bank_holiday_m_status]
GO
ALTER TABLE [dbo].[m_bank_holiday]  WITH CHECK ADD  CONSTRAINT [FK_m_bank_holiday_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_bank_holiday] CHECK CONSTRAINT [FK_m_bank_holiday_m_type]
GO
ALTER TABLE [dbo].[m_bank_type]  WITH CHECK ADD  CONSTRAINT [FK_m_bank_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_bank_type] CHECK CONSTRAINT [FK_m_bank_type_m_status]
GO
ALTER TABLE [dbo].[m_bank_type]  WITH CHECK ADD  CONSTRAINT [FK_m_bank_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_bank_type] CHECK CONSTRAINT [FK_m_bank_type_m_type]
GO
ALTER TABLE [dbo].[m_borrower_type]  WITH CHECK ADD  CONSTRAINT [FK_m_borrower_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_borrower_type] CHECK CONSTRAINT [FK_m_borrower_type_m_status]
GO
ALTER TABLE [dbo].[m_borrower_type]  WITH CHECK ADD  CONSTRAINT [FK_m_borrower_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_borrower_type] CHECK CONSTRAINT [FK_m_borrower_type_m_type]
GO
ALTER TABLE [dbo].[m_branch_code]  WITH CHECK ADD  CONSTRAINT [FK_m_branch_code_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_branch_code] CHECK CONSTRAINT [FK_m_branch_code_m_status]
GO
ALTER TABLE [dbo].[m_branch_code]  WITH CHECK ADD  CONSTRAINT [FK_m_branch_code_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_branch_code] CHECK CONSTRAINT [FK_m_branch_code_m_type]
GO
ALTER TABLE [dbo].[m_branch_location]  WITH CHECK ADD  CONSTRAINT [FK_m_branch_location_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_branch_location] CHECK CONSTRAINT [FK_m_branch_location_m_status]
GO
ALTER TABLE [dbo].[m_branch_location]  WITH CHECK ADD  CONSTRAINT [FK_m_branch_location_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_branch_location] CHECK CONSTRAINT [FK_m_branch_location_m_type]
GO
ALTER TABLE [dbo].[m_business_nature]  WITH CHECK ADD  CONSTRAINT [FK_m_business_nature_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_business_nature] CHECK CONSTRAINT [FK_m_business_nature_m_status]
GO
ALTER TABLE [dbo].[m_business_nature]  WITH CHECK ADD  CONSTRAINT [FK_m_business_nature_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_business_nature] CHECK CONSTRAINT [FK_m_business_nature_m_type]
GO
ALTER TABLE [dbo].[m_business_type]  WITH CHECK ADD  CONSTRAINT [FK_m_business_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_business_type] CHECK CONSTRAINT [FK_m_business_type_m_status]
GO
ALTER TABLE [dbo].[m_business_type]  WITH CHECK ADD  CONSTRAINT [FK_m_business_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_business_type] CHECK CONSTRAINT [FK_m_business_type_m_type]
GO
ALTER TABLE [dbo].[m_campaign_code]  WITH CHECK ADD  CONSTRAINT [FK_m_campaign_code_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_campaign_code] CHECK CONSTRAINT [FK_m_campaign_code_m_status]
GO
ALTER TABLE [dbo].[m_campaign_code]  WITH CHECK ADD  CONSTRAINT [FK_m_campaign_code_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_campaign_code] CHECK CONSTRAINT [FK_m_campaign_code_m_type]
GO
ALTER TABLE [dbo].[m_cdd]  WITH CHECK ADD  CONSTRAINT [FK_m_cdd_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_cdd] CHECK CONSTRAINT [FK_m_cdd_m_status]
GO
ALTER TABLE [dbo].[m_cdd]  WITH CHECK ADD  CONSTRAINT [FK_m_cdd_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_cdd] CHECK CONSTRAINT [FK_m_cdd_m_type]
GO
ALTER TABLE [dbo].[m_cic]  WITH CHECK ADD  CONSTRAINT [FK_m_cic_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_cic] CHECK CONSTRAINT [FK_m_cic_m_status]
GO
ALTER TABLE [dbo].[m_cic]  WITH CHECK ADD  CONSTRAINT [FK_m_cic_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_cic] CHECK CONSTRAINT [FK_m_cic_m_type]
GO
ALTER TABLE [dbo].[m_city]  WITH CHECK ADD  CONSTRAINT [FK_m_city_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_city] CHECK CONSTRAINT [FK_m_city_m_status]
GO
ALTER TABLE [dbo].[m_city]  WITH CHECK ADD  CONSTRAINT [FK_m_city_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_city] CHECK CONSTRAINT [FK_m_city_m_type]
GO
ALTER TABLE [dbo].[m_commision_type]  WITH CHECK ADD  CONSTRAINT [FK_m_commision_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_commision_type] CHECK CONSTRAINT [FK_m_commision_type_m_status]
GO
ALTER TABLE [dbo].[m_commision_type]  WITH CHECK ADD  CONSTRAINT [FK_m_commision_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_commision_type] CHECK CONSTRAINT [FK_m_commision_type_m_type]
GO
ALTER TABLE [dbo].[m_company_code]  WITH CHECK ADD  CONSTRAINT [FK_m_company_code_m_business_nature] FOREIGN KEY([fk_m_business_nature_id])
REFERENCES [dbo].[m_business_nature] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_code] CHECK CONSTRAINT [FK_m_company_code_m_business_nature]
GO
ALTER TABLE [dbo].[m_company_code]  WITH CHECK ADD  CONSTRAINT [FK_m_company_code_m_city] FOREIGN KEY([fk_company_city_id])
REFERENCES [dbo].[m_city] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_code] CHECK CONSTRAINT [FK_m_company_code_m_city]
GO
ALTER TABLE [dbo].[m_company_code]  WITH CHECK ADD  CONSTRAINT [FK_m_company_code_m_company_type] FOREIGN KEY([fk_m_company_type_id])
REFERENCES [dbo].[m_company_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_code] CHECK CONSTRAINT [FK_m_company_code_m_company_type]
GO
ALTER TABLE [dbo].[m_company_code]  WITH CHECK ADD  CONSTRAINT [FK_m_company_code_m_district] FOREIGN KEY([fk_company_district_id])
REFERENCES [dbo].[m_district] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_code] CHECK CONSTRAINT [FK_m_company_code_m_district]
GO
ALTER TABLE [dbo].[m_company_code]  WITH CHECK ADD  CONSTRAINT [FK_m_company_code_m_reason] FOREIGN KEY([fk_reason_company_id])
REFERENCES [dbo].[m_reason] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_code] CHECK CONSTRAINT [FK_m_company_code_m_reason]
GO
ALTER TABLE [dbo].[m_company_code]  WITH CHECK ADD  CONSTRAINT [FK_m_company_code_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_code] CHECK CONSTRAINT [FK_m_company_code_m_status]
GO
ALTER TABLE [dbo].[m_company_code]  WITH CHECK ADD  CONSTRAINT [FK_m_company_code_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_code] CHECK CONSTRAINT [FK_m_company_code_m_type]
GO
ALTER TABLE [dbo].[m_company_type]  WITH CHECK ADD  CONSTRAINT [FK_m_company_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_type] CHECK CONSTRAINT [FK_m_company_type_m_status]
GO
ALTER TABLE [dbo].[m_company_type]  WITH CHECK ADD  CONSTRAINT [FK_m_company_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_company_type] CHECK CONSTRAINT [FK_m_company_type_m_type]
GO
ALTER TABLE [dbo].[m_credit_bureau_type]  WITH CHECK ADD  CONSTRAINT [FK_m_credit_bureau_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_credit_bureau_type] CHECK CONSTRAINT [FK_m_credit_bureau_type_m_status]
GO
ALTER TABLE [dbo].[m_credit_bureau_type]  WITH CHECK ADD  CONSTRAINT [FK_m_credit_bureau_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_credit_bureau_type] CHECK CONSTRAINT [FK_m_credit_bureau_type_m_type]
GO
ALTER TABLE [dbo].[m_credit_deviation]  WITH CHECK ADD  CONSTRAINT [FK_m_credit_deviation_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_credit_deviation] CHECK CONSTRAINT [FK_m_credit_deviation_m_status]
GO
ALTER TABLE [dbo].[m_credit_deviation]  WITH CHECK ADD  CONSTRAINT [FK_m_credit_deviation_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_credit_deviation] CHECK CONSTRAINT [FK_m_credit_deviation_m_type]
GO
ALTER TABLE [dbo].[m_criteria]  WITH CHECK ADD  CONSTRAINT [FK_m_criteria_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_criteria] CHECK CONSTRAINT [FK_m_criteria_m_status]
GO
ALTER TABLE [dbo].[m_criteria]  WITH CHECK ADD  CONSTRAINT [FK_m_criteria_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_criteria] CHECK CONSTRAINT [FK_m_criteria_m_type]
GO
ALTER TABLE [dbo].[m_current_resident_type]  WITH CHECK ADD  CONSTRAINT [FK_m_current_resident_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_current_resident_type] CHECK CONSTRAINT [FK_m_current_resident_type_m_status]
GO
ALTER TABLE [dbo].[m_current_resident_type]  WITH CHECK ADD  CONSTRAINT [FK_m_current_resident_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_current_resident_type] CHECK CONSTRAINT [FK_m_current_resident_type_m_type]
GO
ALTER TABLE [dbo].[m_customer_relationship]  WITH CHECK ADD  CONSTRAINT [FK_m_customer_relationship_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_customer_relationship] CHECK CONSTRAINT [FK_m_customer_relationship_m_status]
GO
ALTER TABLE [dbo].[m_customer_relationship]  WITH CHECK ADD  CONSTRAINT [FK_m_customer_relationship_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_customer_relationship] CHECK CONSTRAINT [FK_m_customer_relationship_m_type]
GO
ALTER TABLE [dbo].[m_customer_segment]  WITH CHECK ADD  CONSTRAINT [FK_m_customer_segment_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_customer_segment] CHECK CONSTRAINT [FK_m_customer_segment_m_status]
GO
ALTER TABLE [dbo].[m_customer_segment]  WITH CHECK ADD  CONSTRAINT [FK_m_customer_segment_m_type] FOREIGN KEY([pk_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_customer_segment] CHECK CONSTRAINT [FK_m_customer_segment_m_type]
GO
ALTER TABLE [dbo].[m_customer_type]  WITH CHECK ADD  CONSTRAINT [FK_m_customer_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_customer_type] CHECK CONSTRAINT [FK_m_customer_type_m_status]
GO
ALTER TABLE [dbo].[m_customer_type]  WITH CHECK ADD  CONSTRAINT [FK_m_customer_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_customer_type] CHECK CONSTRAINT [FK_m_customer_type_m_type]
GO
ALTER TABLE [dbo].[m_deviation_code]  WITH CHECK ADD  CONSTRAINT [FK_m_deviation_code_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_deviation_code] CHECK CONSTRAINT [FK_m_deviation_code_m_status]
GO
ALTER TABLE [dbo].[m_deviation_code]  WITH CHECK ADD  CONSTRAINT [FK_m_deviation_code_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_deviation_code] CHECK CONSTRAINT [FK_m_deviation_code_m_type]
GO
ALTER TABLE [dbo].[m_district]  WITH CHECK ADD  CONSTRAINT [FK_m_district_m_city] FOREIGN KEY([fk_city_id])
REFERENCES [dbo].[m_city] ([pk_id])
GO
ALTER TABLE [dbo].[m_district] CHECK CONSTRAINT [FK_m_district_m_city]
GO
ALTER TABLE [dbo].[m_district]  WITH CHECK ADD  CONSTRAINT [FK_m_district_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_district] CHECK CONSTRAINT [FK_m_district_m_status]
GO
ALTER TABLE [dbo].[m_district]  WITH CHECK ADD  CONSTRAINT [FK_m_district_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_district] CHECK CONSTRAINT [FK_m_district_m_type]
GO
ALTER TABLE [dbo].[m_education]  WITH CHECK ADD  CONSTRAINT [FK_m_education_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_education] CHECK CONSTRAINT [FK_m_education_m_status]
GO
ALTER TABLE [dbo].[m_education]  WITH CHECK ADD  CONSTRAINT [FK_m_education_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_education] CHECK CONSTRAINT [FK_m_education_m_type]
GO
ALTER TABLE [dbo].[m_employment_type]  WITH CHECK ADD  CONSTRAINT [FK_m_employment_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_employment_type] CHECK CONSTRAINT [FK_m_employment_type_m_status]
GO
ALTER TABLE [dbo].[m_employment_type]  WITH CHECK ADD  CONSTRAINT [FK_m_employment_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_employment_type] CHECK CONSTRAINT [FK_m_employment_type_m_type]
GO
ALTER TABLE [dbo].[m_floating_interest_rate]  WITH CHECK ADD  CONSTRAINT [FK_m_floating_interest_rate_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_floating_interest_rate] CHECK CONSTRAINT [FK_m_floating_interest_rate_m_status]
GO
ALTER TABLE [dbo].[m_floating_interest_rate]  WITH CHECK ADD  CONSTRAINT [FK_m_floating_interest_rate_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_floating_interest_rate] CHECK CONSTRAINT [FK_m_floating_interest_rate_m_type]
GO
ALTER TABLE [dbo].[m_income_type]  WITH CHECK ADD  CONSTRAINT [FK_m_income_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_income_type] CHECK CONSTRAINT [FK_m_income_type_m_status]
GO
ALTER TABLE [dbo].[m_income_type]  WITH CHECK ADD  CONSTRAINT [FK_m_income_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_income_type] CHECK CONSTRAINT [FK_m_income_type_m_type]
GO
ALTER TABLE [dbo].[m_industry]  WITH CHECK ADD  CONSTRAINT [FK_m_industry_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_industry] CHECK CONSTRAINT [FK_m_industry_m_status]
GO
ALTER TABLE [dbo].[m_industry]  WITH CHECK ADD  CONSTRAINT [FK_m_industry_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_industry] CHECK CONSTRAINT [FK_m_industry_m_type]
GO
ALTER TABLE [dbo].[m_interest_classification]  WITH CHECK ADD  CONSTRAINT [FK_m_interest_classification_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_interest_classification] CHECK CONSTRAINT [FK_m_interest_classification_m_status]
GO
ALTER TABLE [dbo].[m_interest_classification]  WITH CHECK ADD  CONSTRAINT [FK_m_interest_classification_m_type] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_interest_classification] CHECK CONSTRAINT [FK_m_interest_classification_m_type]
GO
ALTER TABLE [dbo].[m_labour_contract_type]  WITH CHECK ADD  CONSTRAINT [FK_m_labour_contract_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_labour_contract_type] CHECK CONSTRAINT [FK_m_labour_contract_type_m_status]
GO
ALTER TABLE [dbo].[m_labour_contract_type]  WITH CHECK ADD  CONSTRAINT [FK_m_labour_contract_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_labour_contract_type] CHECK CONSTRAINT [FK_m_labour_contract_type_m_type]
GO
ALTER TABLE [dbo].[m_loan_purpose]  WITH CHECK ADD  CONSTRAINT [FK_m_loan_purpose_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_loan_purpose] CHECK CONSTRAINT [FK_m_loan_purpose_m_status]
GO
ALTER TABLE [dbo].[m_loan_purpose]  WITH CHECK ADD  CONSTRAINT [FK_m_loan_purpose_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_loan_purpose] CHECK CONSTRAINT [FK_m_loan_purpose_m_type]
GO
ALTER TABLE [dbo].[m_loan_tenor]  WITH CHECK ADD  CONSTRAINT [FK_m_loan_tenor_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_loan_tenor] CHECK CONSTRAINT [FK_m_loan_tenor_m_status]
GO
ALTER TABLE [dbo].[m_loan_tenor]  WITH CHECK ADD  CONSTRAINT [FK_m_loan_tenor_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_loan_tenor] CHECK CONSTRAINT [FK_m_loan_tenor_m_type]
GO
ALTER TABLE [dbo].[m_loan_trend]  WITH CHECK ADD  CONSTRAINT [FK_m_loan_trend_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_loan_trend] CHECK CONSTRAINT [FK_m_loan_trend_m_status]
GO
ALTER TABLE [dbo].[m_loan_trend]  WITH CHECK ADD  CONSTRAINT [FK_m_loan_trend_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_loan_trend] CHECK CONSTRAINT [FK_m_loan_trend_m_type]
GO
ALTER TABLE [dbo].[m_loan_type]  WITH CHECK ADD  CONSTRAINT [FK_m_loan_type_m_trading_area] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_trading_area] ([pk_id])
GO
ALTER TABLE [dbo].[m_loan_type] CHECK CONSTRAINT [FK_m_loan_type_m_trading_area]
GO
ALTER TABLE [dbo].[m_loan_type]  WITH CHECK ADD  CONSTRAINT [FK_m_loan_type_m_trading_area1] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_trading_area] ([pk_id])
GO
ALTER TABLE [dbo].[m_loan_type] CHECK CONSTRAINT [FK_m_loan_type_m_trading_area1]
GO
ALTER TABLE [dbo].[m_marital_status]  WITH CHECK ADD  CONSTRAINT [FK_m_marital_status_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_marital_status] CHECK CONSTRAINT [FK_m_marital_status_m_status]
GO
ALTER TABLE [dbo].[m_marital_status]  WITH CHECK ADD  CONSTRAINT [FK_m_marital_status_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_marital_status] CHECK CONSTRAINT [FK_m_marital_status_m_type]
GO
ALTER TABLE [dbo].[m_nationality]  WITH CHECK ADD  CONSTRAINT [FK_m_nationality_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_nationality] CHECK CONSTRAINT [FK_m_nationality_m_status]
GO
ALTER TABLE [dbo].[m_nationality]  WITH CHECK ADD  CONSTRAINT [FK_m_nationality_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_nationality] CHECK CONSTRAINT [FK_m_nationality_m_type]
GO
ALTER TABLE [dbo].[m_occupation]  WITH CHECK ADD  CONSTRAINT [FK_m_occupation_m_occupation] FOREIGN KEY([pk_id])
REFERENCES [dbo].[m_occupation] ([pk_id])
GO
ALTER TABLE [dbo].[m_occupation] CHECK CONSTRAINT [FK_m_occupation_m_occupation]
GO
ALTER TABLE [dbo].[m_occupation]  WITH CHECK ADD  CONSTRAINT [FK_m_occupation_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_occupation] CHECK CONSTRAINT [FK_m_occupation_m_status]
GO
ALTER TABLE [dbo].[m_ownership_type]  WITH CHECK ADD  CONSTRAINT [FK_m_ownership_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_ownership_type] CHECK CONSTRAINT [FK_m_ownership_type_m_status]
GO
ALTER TABLE [dbo].[m_ownership_type]  WITH CHECK ADD  CONSTRAINT [FK_m_ownership_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_ownership_type] CHECK CONSTRAINT [FK_m_ownership_type_m_type]
GO
ALTER TABLE [dbo].[m_position]  WITH CHECK ADD  CONSTRAINT [FK_m_position_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_position] CHECK CONSTRAINT [FK_m_position_m_status]
GO
ALTER TABLE [dbo].[m_position]  WITH CHECK ADD  CONSTRAINT [FK_m_position_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_position] CHECK CONSTRAINT [FK_m_position_m_type]
GO
ALTER TABLE [dbo].[m_product]  WITH CHECK ADD  CONSTRAINT [FK_m_product_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_product] CHECK CONSTRAINT [FK_m_product_m_status]
GO
ALTER TABLE [dbo].[m_product]  WITH CHECK ADD  CONSTRAINT [FK_m_product_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_product] CHECK CONSTRAINT [FK_m_product_m_type]
GO
ALTER TABLE [dbo].[m_program_code]  WITH CHECK ADD  CONSTRAINT [FK_m_program_code_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_program_code] CHECK CONSTRAINT [FK_m_program_code_m_status]
GO
ALTER TABLE [dbo].[m_program_code]  WITH CHECK ADD  CONSTRAINT [FK_m_program_code_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_program_code] CHECK CONSTRAINT [FK_m_program_code_m_type]
GO
ALTER TABLE [dbo].[m_program_type]  WITH CHECK ADD  CONSTRAINT [FK_m_program_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_program_type] CHECK CONSTRAINT [FK_m_program_type_m_status]
GO
ALTER TABLE [dbo].[m_program_type]  WITH CHECK ADD  CONSTRAINT [FK_m_program_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_program_type] CHECK CONSTRAINT [FK_m_program_type_m_type]
GO
ALTER TABLE [dbo].[m_property_sale]  WITH CHECK ADD  CONSTRAINT [FK_m_property_sale_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_property_sale] CHECK CONSTRAINT [FK_m_property_sale_m_status]
GO
ALTER TABLE [dbo].[m_property_sale]  WITH CHECK ADD  CONSTRAINT [FK_m_property_sale_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_property_sale] CHECK CONSTRAINT [FK_m_property_sale_m_type]
GO
ALTER TABLE [dbo].[m_property_status]  WITH CHECK ADD  CONSTRAINT [FK_m_property_status_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_property_status] CHECK CONSTRAINT [FK_m_property_status_m_status]
GO
ALTER TABLE [dbo].[m_property_status]  WITH CHECK ADD  CONSTRAINT [FK_m_property_status_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_property_status] CHECK CONSTRAINT [FK_m_property_status_m_type]
GO
ALTER TABLE [dbo].[m_property_type]  WITH CHECK ADD  CONSTRAINT [FK_m_property_type_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_property_type] CHECK CONSTRAINT [FK_m_property_type_m_status]
GO
ALTER TABLE [dbo].[m_property_type]  WITH CHECK ADD  CONSTRAINT [FK_m_property_type_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_property_type] CHECK CONSTRAINT [FK_m_property_type_m_type]
GO
ALTER TABLE [dbo].[m_reason]  WITH CHECK ADD  CONSTRAINT [FK_m_reason_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_reason] CHECK CONSTRAINT [FK_m_reason_m_status]
GO
ALTER TABLE [dbo].[m_reason]  WITH CHECK ADD  CONSTRAINT [FK_m_reason_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_reason] CHECK CONSTRAINT [FK_m_reason_m_type]
GO
ALTER TABLE [dbo].[m_residence_ownership]  WITH CHECK ADD  CONSTRAINT [FK_m_residence_ownership_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_residence_ownership] CHECK CONSTRAINT [FK_m_residence_ownership_m_status]
GO
ALTER TABLE [dbo].[m_sales_channel]  WITH CHECK ADD  CONSTRAINT [FK_m_sales_channel_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_sales_channel] CHECK CONSTRAINT [FK_m_sales_channel_m_status]
GO
ALTER TABLE [dbo].[m_sales_channel]  WITH CHECK ADD  CONSTRAINT [FK_m_sales_channel_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_sales_channel] CHECK CONSTRAINT [FK_m_sales_channel_m_type]
GO
ALTER TABLE [dbo].[m_status]  WITH CHECK ADD  CONSTRAINT [FK_m_status_m_product] FOREIGN KEY([fk_product_id])
REFERENCES [dbo].[m_product] ([pk_id])
GO
ALTER TABLE [dbo].[m_status] CHECK CONSTRAINT [FK_m_status_m_product]
GO
ALTER TABLE [dbo].[m_status]  WITH CHECK ADD  CONSTRAINT [FK_m_status_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_status] CHECK CONSTRAINT [FK_m_status_m_type]
GO
ALTER TABLE [dbo].[m_trading_area]  WITH CHECK ADD  CONSTRAINT [FK_m_trading_area_m_status] FOREIGN KEY([fk_status_id])
REFERENCES [dbo].[m_status] ([pk_id])
GO
ALTER TABLE [dbo].[m_trading_area] CHECK CONSTRAINT [FK_m_trading_area_m_status]
GO
ALTER TABLE [dbo].[m_trading_area]  WITH CHECK ADD  CONSTRAINT [FK_m_trading_area_m_type] FOREIGN KEY([fk_type_id])
REFERENCES [dbo].[m_type] ([pk_id])
GO
ALTER TABLE [dbo].[m_trading_area] CHECK CONSTRAINT [FK_m_trading_area_m_type]
GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_al]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_al] 
	@fDate datetime,
	@tDate datetime,
	@userRole1 varchar(200),
	@userRole2 varchar(200)
AS
BEGIN

	select 
		a.*,
		m.[ReceivedDate],
		u.FullName
	from dbo.MLApplication m 
	left join dbo.AppActionLogData a on a.[ApplicationNo] = m.[ApplicationNo]
	left join dbo.LoginUser u on u.[PeoplewiseID] = a.[ActionBy]
	where 
	(
		(a.[ActionUserRole] = @userRole1 or a.[ActionUserRole] = @userRole2) and
		m.[Status] != 0 and 
		([dbo]._fGetShortDate(m.[ReceivedDate]) between [dbo]._fGetShortDate(@fDate) and [dbo]._fGetShortDate(@tDate))
	)
	order by a.[ApplicationNo], a.[ActionDate]

END




GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_al_master_asc]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_al_master_asc] 
	@fDate datetime,
	@tDate datetime
AS
BEGIN

select
	ROW_NUMBER() OVER (order by m.[ReceivedDate]) as 'Seq no',
	m.ARMCode,
	c.Initital,
	c.Gender,
	c.[FullName],
	REPLACE(CONVERT(VARCHAR(9), c.[DOB], 6), ' ', '-') as DOB,
	c.NationalityCode as Nationality,
	c.MobileNo as PrimaryPhoneNo,
	c.[HomePhoneNo],	
	c.MainAddress as BillingAddress,
	c.EmailAddress1,
	c.[PassportID] as IdentificationNo,
	c.DateOfPassport as ExpriedDate,
	c.[ResidentialAddress],
	c.Ward as ResidentialWard,
	c.District as ResidentialDistrict,
	c.City as ResidentialCity,
	c.PermanentAddressCity,
	c.PermanentAddress,
	c.PermanentAddressWard,
	c.PermanentAddressDistrict,
	c.CompanyName,
	c.CompanyAddress,
	c.CompanyWard,
	c.CompanyDistrict,
	c.CompanyCity,
	c.[OfficeTel] as CompanyPhone,
	c.CurrentPosition,
	oc.[Name] as Occupation,
	c.TypeLabourContract as TypeOfContract,
	--
	c1.[FullName] as 'Co-Borrower 1_Name', 
	c1.[PassportID] as 'Co-Borrower 1_ID', 
	REPLACE(CONVERT(VARCHAR(9), c1.[DOB], 6), ' ', '-') as 'Co-Borrower 1_DOB',
	c1.MobileNo as 'Co-Borrower 1_Cell',
	(ISNULL(c1.[ResidentialAddress],'') + '-' + ISNULL(c1.[Ward],'') + '-' + ISNULL(c1.[District],'') + '-' + ISNULL(c1.[City],'')) as 'Co-Borrower 1_ResidentialAddress',
	c1.CurrentPosition as 'Co-Borrower 1_JobTitle',
	--
	c2.[FullName] as 'Co-Borrower 2_Name', 
	c2.[PassportID] as 'Co-Borrower 2_ID', 
	REPLACE(CONVERT(VARCHAR(9), c2.[DOB], 6), ' ', '-') as 'Co-Borrower 2_DOB',
	c2.MobileNo as 'Co-Borrower 2_Cell',
	(ISNULL(c2.[ResidentialAddress],'') + '-' + ISNULL(c2.[Ward],'') + '-' + ISNULL(c2.[District],'') + '-' + ISNULL(c2.[City],'')) as 'Co-Borrower 2_ResidentialAddress',
	c2.CurrentPosition as 'Co-Borrower 2_JobTitle',
	--
	c3.[FullName] as 'Co-Borrower 3_Name', 
	c3.[PassportID] as 'Co-Borrower 3_ID', 
	REPLACE(CONVERT(VARCHAR(9), c3.[DOB], 6), ' ', '-') as 'Co-Borrower 3_DOB',
	c3.MobileNo as 'Co-Borrower 3_Cell',
	(ISNULL(c3.[ResidentialAddress],'') + '-' + ISNULL(c3.[Ward],'') + '-' + ISNULL(c3.[District],'') + '-' + ISNULL(c3.[City],'')) as 'Co-Borrower 3_ResidentialAddress',
	c3.CurrentPosition as 'Co-Borrower 3_JobTitle',
	--
	stt.StatusName as CurrentStatus
	from [dbo].[MLApplication] m WITH (NOLOCK) 
	left join [dbo].[Customer] c WITH (NOLOCK) on c.[ID] = m.[MainBorrowerID]
	left join [dbo].[Customer] c1 WITH (NOLOCK) on c1.[ID] = m.[CoBorrower1]
	left join [dbo].[Customer] c2 WITH (NOLOCK) on c2.[ID] = m.[CoBorrower2]
	left join [dbo].[Customer] c3 WITH (NOLOCK) on c3.[ID] = m.[CoBorrower3]
	left join [dbo].[OccupationList] oc WITH (NOLOCK) on oc.[ID] = c.[OccupationID] 
	inner join [dbo].[tblStatusName] stt on stt.[ID] = m.[Status]
	where ([dbo]._fGetShortDate(m.[ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
		   [dbo]._fGetShortDate(m.[ReceivedDate]) <= [dbo]._fGetShortDate(@tDate))
		   and stt.StatusName in ('Approved','LODisbursed')
	order by m.[ReceivedDate]

END




GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_cial]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_cial] 
	@fDate datetime,
	@tDate datetime,
	@userOS varchar(50),
	@approvedStatus varchar(200)
AS
BEGIN

	select distinct
		a.*,
		m.[ReceivedDate],
		u.FullName
	from dbo.MLApplication m
	left join dbo.AppActionLogData a on a.[ApplicationNo] = m.[ApplicationNo]
	left join dbo.AppActionLog l on l.[ApplicationNo] = a.[ApplicationNo]
	left join dbo.LoginUser u on u.[PeoplewiseID] = a.[ActionBy]
	where
	(
		a.[IsFinalData] = 1 and
		l.[Action] = @approvedStatus and
		(a.[ActionUserRole] = @userOS or a.[ActionUserRole] = @approvedStatus) and
		([dbo]._fGetShortDate(l.[ActionDate]) between [dbo]._fGetShortDate(@fDate) and [dbo]._fGetShortDate(@tDate))
	)
	order by a.[ApplicationNo], a.[ActionDate]

END

GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_collateral_detail]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_collateral_detail] 
	@fDate datetime,
	@tDate datetime,
	@limitedIncome int
AS
BEGIN
	select 
	ROW_NUMBER() over (order by ml.[ReceivedDate]) as Number,
	CONVERT(VARCHAR(24), ml.[ReceivedDate], 113) as 'Receving Date',
	ml.[ApplicationNo] as 'Application No', 
	dis.[LoanAccountNo] as 'Loan Account Number',
	ct.[Name] as 'Branch Location',
	c.[FullName] as 'Customer Name', 
	csg.[Name] as 'Customer Relationship ID(eBBS)',
	ml.BrandCar as 'Car Marker/Brand',
	aprs.[Name] as 'Property Status',
	ml.Model as Model,
	ml.CarType as 'Car Type',
	'' as 'Car Source',
	ml.YearOfManufacture as 'Year Of Manufacture',
	'' as Color,
	ml.NumberOfSeats as 'Number Of Seats',
	ml.EngineNumber as 'Engine Number',
	ml.ChassisNumber as 'Chassis Number',
	ml.PlateFormNumber as 'Plate Form Number',
	REPLACE(CONVERT(varchar, CAST(ml.PurchasedPrice as money), 1), '.00', '') as 'Purchasing price (VND)',
	InsuranceCompanyName as 'Insurance company name',
	REPLACE(CONVERT(varchar, CAST(ml.InsuranceAmount as money), 1), '.00', '') as 'Insurance Amount',
	REPLACE(CONVERT(VARCHAR(11), ml.InsuranceExpiredDate, 106), ' ', '/') as 'Insurance Expiry Date',
	DATEDIFF(D,ml.InsuranceExpiredDate,GETDATE()) as Aging,
	dis.[DisbursalStatus] as 'Disbursal Status',
	REPLACE(CONVERT(VARCHAR(11), dis.[DisbursedDate], 106), ' ', '/') as 'Disbursed Date',
	s.[Name] as Channel,
	ml.[ARMCode] as 'ARM Code'
	--
	from [dbo].[MLApplication] ml WITH (NOLOCK)
	left join dbo.TeleVerifierForm tvf on tvf.[CustomerID] = ml.[MainBorrowerID]	
	-- CUSTOMER
	left join [dbo].[Customer] c WITH (NOLOCK) on c.[ID] = ml.[MainBorrowerID]
	left join [dbo].[BlackCustomer] bl on bl.[IDNumber] = c.[PassportID]
	left join [dbo].[Customer] c1 WITH (NOLOCK) on c1.[ID] = ml.[CoBorrower1]
	left join [dbo].[Customer] c2 WITH (NOLOCK) on c2.[ID] = ml.[CoBorrower2]
	left join [dbo].[Customer] c3 WITH (NOLOCK) on c3.[ID] = ml.[CoBorrower3]
	-- Another Info
	left join [dbo].[CompanyCode] cd on cd.[ID] = c.[CompanyCodeID]	
	left join [dbo].[TradingArea] ta on ta.[ID] = ml.[TradingAreaID]
	left join [dbo].[SalesChannel] s on s.[ID] = ml.[ChannelID]
	left join [dbo].[CustomerType] ct on ct.[ID] = ml.[CustomerTypeID]
	left join [dbo].[PaymentType] pt on pt.[ID] = ml.[PaymentTypeID]
	left join [dbo].[ProgramType] prt on prt.[ID] = ml.[ProgramTypeID]
	left join [dbo].[ProductType] pdt on pdt.[ID] = ml.[ProductType]
	left join [dbo].[CustomerSegment] csg on csg.[ID] = ml.[CustomerSegmentID]
	-- APPROVAL
	left join [dbo].[ApprovalMLApplication] a WITH (NOLOCK) on a.[ID] = ml.[ApprovalID1]
	left join [dbo].[ReworkReason] arr on arr.[ID] = a.[DeviationReasonID]
	left join [dbo].[ReworkReason] rrr1 on rrr1.[ID] = a.[RejectReasonID]
	left join [dbo].[ReworkReason] rrc1 on rrc1.[ID] = a.[CancelReasonID]
	-- FINAL APPROVAL
	left join [dbo].[ApprovalMLApplication] a2 WITH (NOLOCK) on a2.[ID] = ml.[ApprovalID2]
	left join [dbo].[ReworkReason] a2rr on a2rr.[ID] = a2.[DeviationReasonID]
	left join [dbo].[ReworkReason] rrr on rrr.[ID] = a2.[RejectReasonID]
	left join [dbo].[ReworkReason] rrc on rrc.[ID] = a2.[CancelReasonID]
	-- Disbursement
	left join [dbo].[Disbursement] ds WITH (NOLOCK) on ds.[ApplicationNo] = ml.[ApplicationNo]
	-- Property Info
	left join [dbo].[PIMLApplication] pl WITH (NOLOCK) on pl.[ID] = ml.[PropertyInfoID1]
	left join [dbo].[PropertyType] aprt on aprt.[ID] = pl.[PropertyTypeID]
	left join [dbo].[PropertyStat] aprs on aprs.[ID] = pl.[PropertyStatusID]
	-- FINAL PropertyInfo
	left join [dbo].[PIMLApplication] fpl WITH (NOLOCK) on fpl.[ID] = ml.[FinalProperty1]
	left join [dbo].[PropertyType] fprt on fprt.[ID] = fpl.[PropertyTypeID]
	left join [dbo].[PropertyStat] fprs on fprs.[ID] = fpl.[PropertyStatusID]
	-- FINAL Collateral
	left join [dbo].[PIMLApplication] fcol WITH (NOLOCK) on fcol.[ID] = ml.[FinalCollateral1]
	left join [dbo].[PropertyType] fcolp1 on fcolp1.[ID] = fcol.[PropertyTypeID]
	left join [dbo].[PropertyStat] fcols1 on fcols1.[ID] = fcol.[PropertyStatusID]
	--
	left join dbo.Disbursement dis WITH (NOLOCK) on dis.[ApplicationNo] = ml.[ApplicationNo]	
	--
	left join [dbo].[LoginUser] u1 on u1.[PeoplewiseID] = ml.[CI1]
	left join [dbo].[LoginUser] u2 on u2.[PeoplewiseID] = ml.[CI2]
	left join [dbo].[tblStatusName] stt on stt.[ID] = ml.[Status]
	where 
	([dbo]._fGetShortDate(ml.[ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
	[dbo]._fGetShortDate(ml.[ReceivedDate]) <= [dbo]._fGetShortDate(@tDate))
	and left(ml.[ApplicationNo],2) = 'AL'
	order by ml.[ReceivedDate]
END

GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_customers]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_customers] 
	@fDate datetime,
	@tDate datetime
AS
BEGIN

select
	ROW_NUMBER() OVER (order by m.[ReceivedDate]) as 'Seq no',
	c.[FullName] as 'Customer name',
	c.[PassportID] as 'Customer ID', 
	(ISNULL(c.[ResidentialAddress],'') + '-' + ISNULL(c.[Ward],'') + '-' + ISNULL(c.[District],'') + '-' + ISNULL(c.[City],'')) as 'Customer address',
	c.[MobileNo] as 'Customer mb',
	REPLACE(CONVERT(VARCHAR(9), c.[DOB], 6), ' ', '-') as 'Customer DOB',
	c.[HomePhoneNo] as 'Customer Home Phone',
	c1.[FullName] as 'Co-Borrower 1_Name', c1.[PassportID] as 'Co-Borrower 1_ID', 
	REPLACE(CONVERT(VARCHAR(9), c1.[DOB], 6), ' ', '-') as 'Co-Borrower 1_DOB',
	c2.[FullName] as 'Co-Borrower 2_Name', c2.[PassportID] as 'Co-Borrower 2_ID', 
	REPLACE(CONVERT(VARCHAR(9), c2.[DOB], 6), ' ', '-') as 'Co-Borrower 2_DOB',
	c3.[FullName] as 'Co-Borrower 3_Name', c3.[PassportID] as 'Co-Borrower 3_ID', 
	REPLACE(CONVERT(VARCHAR(9), c3.[DOB], 6), ' ', '-') as 'Co-Borrower 3_DOB',
	c.[CompanyName] as 'business name',
	(ISNULL(c.[CompanyAddress],'') + '-' + ISNULL(c.[CompanyWard],'') + '-' + ISNULL(c.[CompanyDistrict],'') + '-' + ISNULL(c.[CompanyCity],'')) as 'business address',
	c.[OfficeTel] as 'business phone',
	pm1.[AddressNo]+'-'+pm1.[AddressSt]+'-'+pm1.[AddressWard]+'-'+pm1.[AddressDistrict]+'-'+pm1.[AddressCity] as 'Property purchase 1 address',
	pm2.[AddressNo]+'-'+pm2.[AddressSt]+'-'+pm2.[AddressWard]+'-'+pm2.[AddressDistrict]+'-'+pm2.[AddressCity] as 'Property purchase 2 address',
	pm3.[AddressNo]+'-'+pm3.[AddressSt]+'-'+pm3.[AddressWard]+'-'+pm3.[AddressDistrict]+'-'+pm3.[AddressCity] as 'Property purchase 3 address',
	pm4.[AddressNo]+'-'+pm4.[AddressSt]+'-'+pm4.[AddressWard]+'-'+pm4.[AddressDistrict]+'-'+pm4.[AddressCity] as 'Property purchase 4 address',
	pm5.[AddressNo]+'-'+pm5.[AddressSt]+'-'+pm5.[AddressWard]+'-'+pm5.[AddressDistrict]+'-'+pm5.[AddressCity] as 'Property purchase 5 address',
	cl1.[AddressNo]+'-'+cl1.[AddressSt]+'-'+cl1.[AddressWard]+'-'+cl1.[AddressDistrict]+'-'+cl1.[AddressCity] as 'Collateral Details 1_Address',	
	cl2.[AddressNo]+'-'+cl2.[AddressSt]+'-'+cl2.[AddressWard]+'-'+cl2.[AddressDistrict]+'-'+cl2.[AddressCity] as 'Collateral Details 2_Address',
	cl3.[AddressNo]+'-'+cl3.[AddressSt]+'-'+cl3.[AddressWard]+'-'+cl3.[AddressDistrict]+'-'+cl3.[AddressCity] as 'Collateral Details 3_Address',
	fp1.[AddressNo]+'-'+fp1.[AddressSt]+'-'+fp1.[AddressWard]+'-'+fp1.[AddressDistrict]+'-'+fp1.[AddressCity] as 'Final Property purchase 1 address',
	fp2.[AddressNo]+'-'+fp2.[AddressSt]+'-'+fp2.[AddressWard]+'-'+fp2.[AddressDistrict]+'-'+fp2.[AddressCity] as 'Final Property purchase 2 address',
	fp3.[AddressNo]+'-'+fp3.[AddressSt]+'-'+fp3.[AddressWard]+'-'+fp3.[AddressDistrict]+'-'+fp3.[AddressCity] as 'Final Property purchase 3 address',
	fp4.[AddressNo]+'-'+fp4.[AddressSt]+'-'+fp4.[AddressWard]+'-'+fp4.[AddressDistrict]+'-'+fp4.[AddressCity] as 'Final Property purchase 4 address',
	fp5.[AddressNo]+'-'+fp5.[AddressSt]+'-'+fp5.[AddressWard]+'-'+fp5.[AddressDistrict]+'-'+fp5.[AddressCity] as 'Final Property purchase 5 address',
	m.[ReceivedDate]
from [dbo].[MLApplication] m WITH (NOLOCK) 
left join [dbo].[Customer] c WITH (NOLOCK) on c.[ID] = m.[MainBorrowerID]
left join [dbo].[Customer] c1 WITH (NOLOCK) on c1.[ID] = m.[CoBorrower1]
left join [dbo].[Customer] c2 WITH (NOLOCK) on c2.[ID] = m.[CoBorrower2]
left join [dbo].[Customer] c3 WITH (NOLOCK) on c3.[ID] = m.[CoBorrower3]
left join [dbo].[PIMLApplication] pm1 WITH (NOLOCK) on pm1.[ID] = m.[PropertyInfoID1]
left join [dbo].[PIMLApplication] pm2 WITH (NOLOCK) on pm2.[ID] = m.[PropertyInfoID2]
left join [dbo].[PIMLApplication] pm3 WITH (NOLOCK) on pm3.[ID] = m.[PropertyInfoID3]
left join [dbo].[PIMLApplication] pm4 WITH (NOLOCK) on pm4.[ID] = m.[PropertyInfoID4]
left join [dbo].[PIMLApplication] pm5 WITH (NOLOCK) on pm5.[ID] = m.[PropertyInfoID5]
left join [dbo].[PIMLApplication] fp1 WITH (NOLOCK) on fp1.[ID] = m.[FinalProperty1]
left join [dbo].[PIMLApplication] fp2 WITH (NOLOCK) on fp2.[ID] = m.[FinalProperty2]
left join [dbo].[PIMLApplication] fp3 WITH (NOLOCK) on fp3.[ID] = m.[FinalProperty3]
left join [dbo].[PIMLApplication] fp4 WITH (NOLOCK) on fp4.[ID] = m.[FinalProperty4]
left join [dbo].[PIMLApplication] fp5 WITH (NOLOCK) on fp5.[ID] = m.[FinalProperty5]
left join [dbo].[PIMLApplication] cl1 WITH (NOLOCK) on cl1.[ID] = m.[CollateralID1]
left join [dbo].[PIMLApplication] cl2 WITH (NOLOCK) on cl2.[ID] = m.[CollateralID2]
left join [dbo].[PIMLApplication] cl3 WITH (NOLOCK) on cl3.[ID] = m.[CollateralID3]
where ([dbo]._fGetShortDate(m.[ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
	   [dbo]._fGetShortDate(m.[ReceivedDate]) <= [dbo]._fGetShortDate(@tDate))
order by m.[ReceivedDate]

END




GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_master_ci]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_master_ci] 
	@fDate datetime,
	@tDate datetime,
	@limitedIncome int
AS
BEGIN

select 
	ROW_NUMBER() over (order by ml.[ReceivedDate]) as Seq,
	CONVERT(VARCHAR(24), ml.[ReceivedDate], 113) as ReceivedDate,
	ml.[ApplicationNo] as App_No, 
	-- MB
	c.[FullName] as MB_Name, 
	csg.[Name] as CustomerSegment,
	c.[PassportID] as MB_ID, 
	c.[PreviousID] as MB_PreviousID,	
	REPLACE(CONVERT(VARCHAR(11), c.[DOB], 106), ' ', '/') as MB_DOB,
	c.[MobileNo] as MB_Cell,
	((ISNULL(c.ResidentialAddress,'') + '-' + ISNULL(c.Ward,'') + '-' + ISNULL(c.District,'') + '-' + ISNULL(c.City,'')))as MB_ResidentAddress,
	c.[CurrentPosition] as MB_JobTitle, 
	ci.[Name] as MB_CIC,
	(case (select count(*) from dbo.BlackCustomer bc where bc.[IDNumber] = c.[PassportID]) when 0 then 'No' else 'Yes' end) as MB_BlackListCheck,	
	-- CB1
	c1.[FullName] as CB1_Name,
	c1.[PassportID] as CB1_ID,
	REPLACE(CONVERT(VARCHAR(11), c1.[DOB], 106), ' ', '/') as CB1_DOB,
	c1.[MobileNo] as CB1_Cell,
	((ISNULL(c1.ResidentialAddress,'') + '-' + ISNULL(c1.Ward,'') + '-' + ISNULL(c1.District,'') + '-' + ISNULL(c1.City,'')))as CB1_ResidentAddress,
	c1.[CurrentPosition] as CB1_JobTitle, 
	ci2.[Name] as CB1_CIC,
	(case (select count(*) from dbo.BlackCustomer bc1 where bc1.[IDNumber] = c1.[PassportID]) when 0 then 'No' else 'Yes' end) as CB1_BlackListCheck,	
	-- CB2
	c2.[FullName] as CB2_Name,
	c2.[PassportID] as CB2_ID, 
	REPLACE(CONVERT(VARCHAR(11), c2.[DOB], 106), ' ', '/') as CB2_DOB,
	c2.[MobileNo] as CB2_Cell,
	((ISNULL(c2.ResidentialAddress,'') + '-' + ISNULL(c2.Ward,'') + '-' + ISNULL(c2.District,'') + '-' + ISNULL(c2.City,'')))as CB2_ResidentAddress,
	c2.[CurrentPosition] as CB2_JobTitle, 
	(case (select count(*) from dbo.BlackCustomer bc2 where bc2.[IDNumber] = c2.[PassportID]) when 0 then 'No' else 'Yes' end) as CB2_BlackListCheck,	
	-- CB3
	c3.[FullName] as CB3_Name,	
	c3.[PassportID] as CB3_ID, 
	REPLACE(CONVERT(VARCHAR(11), c3.[DOB], 106), ' ', '/') as CB3_DOB,
	c3.[MobileNo] as CB3_Cell,
	((ISNULL(c3.ResidentialAddress,'') + '-' + ISNULL(c3.Ward,'') + '-' + ISNULL(c3.District,'') + '-' + ISNULL(c3.City,'')))as CB3_ResidentAddress,
	(case (select count(*) from dbo.BlackCustomer bc3 where bc3.[IDNumber] = c3.[PassportID]) when 0 then 'No' else 'Yes' end) as CB3_BlackListCheck,	
	-- Other Info
	REPLACE(CONVERT(varchar, CAST(((ISNULL(cic.[Debt1Current],0) + ISNULL(cic.[Debt2Current],0) + ISNULL(cic.[Debt3Current],0) + ISNULL(cic.[Debt4Current],0) + ISNULL(cic.[DebtOtherCurrent],0)) + 
	 (ISNULL(cic2.[Debt1Current],0) + ISNULL(cic2.[Debt2Current],0) + ISNULL(cic2.[Debt3Current],0) + ISNULL(cic2.[Debt4Current],0) + ISNULL(cic2.[DebtOtherCurrent],0)) + 
	 (ISNULL(cic3.[Debt1Current],0) + ISNULL(cic3.[Debt2Current],0) + ISNULL(cic3.[Debt3Current],0) + ISNULL(cic3.[Debt4Current],0) + ISNULL(cic3.[DebtOtherCurrent],0)) + 
	 (ISNULL(cic4.[Debt1Current],0) + ISNULL(cic4.[Debt2Current],0) + ISNULL(cic4.[Debt3Current],0) + ISNULL(cic4.[Debt4Current],0) + ISNULL(cic4.[DebtOtherCurrent],0))) as money), 1), '.00', '') as 'O/S_At_Other_Bank',
	REPLACE(CONVERT(varchar, CAST(((ISNULL(cic.[Debt1EMI],0) + ISNULL(cic.[Debt2EMI],0) + ISNULL(cic.[Debt3EMI],0) + ISNULL(cic.[Debt4EMI],0) + ISNULL(cic.[DebtOtherEMI],0)) + 
	 (ISNULL(cic2.[Debt1EMI],0) + ISNULL(cic2.[Debt2EMI],0) + ISNULL(cic2.[Debt3EMI],0) + ISNULL(cic2.[Debt4EMI],0) + ISNULL(cic2.[DebtOtherEMI],0)) + 
	 (ISNULL(cic3.[Debt1EMI],0) + ISNULL(cic3.[Debt2EMI],0) + ISNULL(cic3.[Debt3EMI],0) + ISNULL(cic3.[Debt4EMI],0) + ISNULL(cic3.[DebtOtherEMI],0)) + 
	 (ISNULL(cic4.[Debt1EMI],0) + ISNULL(cic4.[Debt2EMI],0) + ISNULL(cic4.[Debt3EMI],0) + ISNULL(cic4.[Debt4EMI],0) + ISNULL(cic4.[DebtOtherEMI],0))) as money), 1), '.00', '') as EMI_At_Other_Bank,
	REPLACE(CONVERT(varchar, CAST(ml.[AmountRequest] as money), 1), '.00', '') as Loan_Amt_Applied,	
	ml.[Tenor] as 'Tenor (month)',
	prt.[Name] as Programs,
	pdt.[Name] as ProductType,
	ml.[LoanPurposeCode] as Loan_Purpose,
	pt.[Name] as Payment_Method,
	s.[Name] as Channel,
	ct.[Name] as Branch_Location,
	ml.[ARMCode],
	REPLACE(CONVERT(varchar, CAST((case when cic.[TotalIncome] >= @limitedIncome then (ISNULL(cic.[TotalIncome],0) + ISNULL(cic2.[TotalIncome],0) + ISNULL(cic3.[TotalIncome],0)) else (0 + ISNULL(cic2.[TotalIncome],0) + ISNULL(cic3.[TotalIncome],0)) end) as money), 1), '.00', '') as TotalIncome,
	-- Income Salaried
	REPLACE(CONVERT(varchar, CAST(cicins.[Income1] as money), 1), '.00', '') as Income_Salaried_1,
	REPLACE(CONVERT(varchar, CAST(cicins.[Income2] as money), 1), '.00', '') as Income_Salaried_2,
	REPLACE(CONVERT(varchar, CAST(cicins.[Income3] as money), 1), '.00', '') as Income_Salaried_3,
	REPLACE(CONVERT(varchar, CAST(cicins.[Income4] as money), 1), '.00', '') as Income_Salaried_4,
	-- Income HouseRental
	REPLACE(CONVERT(varchar, CAST(cicinh.[Income1] as money), 1), '.00', '') as Income_HouseRental_1,
	REPLACE(CONVERT(varchar, CAST(cicinh.[Income2] as money), 1), '.00', '') as Income_HouseRental_2,
	REPLACE(CONVERT(varchar, CAST(cicinh.[Income3] as money), 1), '.00', '') as Income_HouseRental_3,
	REPLACE(CONVERT(varchar, CAST(cicinh.[Income4] as money), 1), '.00', '') as Income_HouseRental_4,
	-- Income CarRental
	REPLACE(CONVERT(varchar, CAST(cicinc.[Income1] as money), 1), '.00', '') as Income_CarRental_1,
	REPLACE(CONVERT(varchar, CAST(cicinc.[Income2] as money), 1), '.00', '') as Income_CarRental_2,
	REPLACE(CONVERT(varchar, CAST(cicinc.[Income3] as money), 1), '.00', '') as Income_CarRental_3,
	REPLACE(CONVERT(varchar, CAST(cicinc.[Income4] as money), 1), '.00', '') as Income_CarRental_4,
	-- Income Private
	REPLACE(CONVERT(varchar, CAST(cicinp.[Income1] as money), 1), '.00', '') as Income_PrivateBusiness_1,
	REPLACE(CONVERT(varchar, CAST(cicinp.[Income2] as money), 1), '.00', '') as Income_PrivateBusiness_2,
	REPLACE(CONVERT(varchar, CAST(cicinp.[Income3] as money), 1), '.00', '') as Income_PrivateBusiness_3,	
	REPLACE(CONVERT(varchar, CAST(cicinp.[Income4] as money), 1), '.00', '') as Income_PrivateBusiness_4,
	-- Other Infos
	(case cic.[Over40TotalIncome] when 1 then 'YES' else 'NO' end) as 'Collateral Rental Income  > 40%(MB)',
	(case cic2.[Over40TotalIncome] when 1 then 'YES' else 'NO' end) as 'ollateral Rental Income  > 40%(CB1)',
	-- AIP
	(
		select top 1 u1.FullName from dbo.AppActionLog aal1 left join dbo.LoginUser u1 on u1.PeoplewiseID=aal1.ActionBy
		where aal1.ApplicationNo=ml.ApplicationNo and aal1.Action='AIPRecommend' order by aal1.ActionDate desc
	) as LastCI_AIPRecommend,
	(
		select top 1 u2.FullName from dbo.AppActionLog aal2 left join dbo.LoginUser u2 on u2.PeoplewiseID=aal2.ActionBy
		where aal2.ApplicationNo=ml.ApplicationNo and aal2.Action='AIPCompleted' order by aal2.ActionDate desc
	) as LastUnderwriter_AIPCompleted,
	a.[Status] as AIP_DECISION_STATUS,
	(case rrr1.[Name] when NULL then rrc1.[Name] else rrr1.[Name] end) as 'AIP_Rejected/Cancelled Reasons',
	REPLACE(CONVERT(VARCHAR(11), a.[DecisionDate], 106), ' ', '/') as AIP_Decision_Date,
	REPLACE(CONVERT(varchar, CAST(a.[LoanAmount] as money), 1), '.00', '') as AIP_LoanAmtApproved,
	a.[Tenor] as 'AIP_Tenor (month)',
	(CONVERT(varchar, CAST(a.[CommercialInterest] as money), 1) + '%') as AIP_Interest,	
	REPLACE(CONVERT(varchar, CAST(a.[RePricing] as money), 1), '.00', '') as 'AIP_Re-pricing Frequently',
	REPLACE(CONVERT(varchar, CAST(a.[TotalEMI] as money), 1), '.00', '') as AIP_TotalEMI,
	REPLACE(CONVERT(varchar, CAST(a.[DBR] as money), 1), '.00', '') as 'AIP_DBR - 2% Added',
	REPLACE(CONVERT(varchar, CAST(a.[TotalExposue] as money), 1), '.00', '')  as AIP_TotalExposure,
	REPLACE(CONVERT(varchar, CAST(a.[TotalOutStandingSCB] as money), 1), '.00', '') as AIP_TotalCurrentOutStandingSCB,
	a.[Level] as AIP_Level,
	arr.[Name] as 'AIP_L2Plus Deviation Reason',
	a.[Remark] as AIP_Remarks,
	pl.[DeveloperName] as AIP_Developer_Property1,
	aprt.[Name] as AIP_PropertyType_Purchased1,
	aprs.[Name]	as AIP_PropertyStatus_Purchased1,
	((ISNULL(pl.AddressNo,'') + '-' + ISNULL(pl.AddressSt,'') + '-' + ISNULL(pl.AddressWard,'') + '-' + ISNULL(pl.AddressDistrict,'') + '-' + ISNULL(pl.AddressCity,'')))as AIP_PropertyAddress_Purchased1,
	-- FINAL APPROVAL
	(
		select top 1 u3.FullName from dbo.AppActionLog aal3 left join dbo.LoginUser u3 on u3.PeoplewiseID=aal3.ActionBy
		where aal3.ApplicationNo=ml.ApplicationNo and aal3.Action='AIPCompleted' order by aal3.ActionDate desc
	) as LastCI_Recommend,
	(
		select top 1 u4.FullName from dbo.AppActionLog aal4 left join dbo.LoginUser u4 on u4.PeoplewiseID=aal4.ActionBy
		where aal4.ApplicationNo=ml.ApplicationNo and aal4.Action='AIPCompleted' order by aal4.ActionDate desc
	) as LastUnderwriter_Approved,
	REPLACE(CONVERT(VARCHAR(11), a2.[DecisionDate], 106), ' ', '/') as Final_DecisionDate,
	a2.[Status] as Final_DECISION_STATUS,
	(case rrr.[Name] when NULL then rrc.[Name] else rrr.[Name] end) as 'Final_Rejected/Cancelled Reasons',
	a2.[Level] as 'Final_Level',
	a2rr.[Name] as 'Final_L2Plus Deviation',
	a2.[Remark] as Final_Remarks,
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmount] as money), 1), '.00', '') as Final_LoanAmtApproved,
	a2.[Tenor] as 'Final_Tenor (month)',
	(CONVERT(varchar, CAST(a2.[CommercialInterest] as money), 1) + '%') as Final_Interest,	 
	REPLACE(CONVERT(varchar, CAST(a2.[RePricing] as money), 1), '.00', '') as 'Final_Re-pricing Frequently',
	REPLACE(CONVERT(varchar, CAST(a2.[TotalEMI] as money), 1), '.00', '') as Final_TotalEMI,
	REPLACE(CONVERT(varchar, CAST(a2.[MaxEMI] as money), 1), '.00', '') as 'Final_EMI2%Added',
	REPLACE(CONVERT(varchar, CAST(a2.[NormalDBR] as money), 1), '.00', '') as Final_NormalDBR,
	REPLACE(CONVERT(varchar, CAST(a2.[DBR] as money), 1), '.00', '') as 'Final_DBR-2% Added',
	REPLACE(CONVERT(varchar, CAST(a2.[TotalExposue] as money), 1), '.00', '') as Final_TotalExposure,
	REPLACE(CONVERT(varchar, CAST(a2.[TotalOutStandingSCB] as money), 1), '.00', '') as Final_TotalCurrentOutStandingSCB,
	REPLACE(CONVERT(varchar, CAST(((NULLIF(a2.[TotalExposue],0) / NULLIF(a2.[TotalEMI],0))*100) as money), 1), '.00', '') as Final_TotalMUE,
	-- FINAL Property Information
	fpl.[DeveloperName] as Final_Developer_Property1,
	fprt.[Name] as Final_PropertyType_Purchased1,
	fprs.[Name]	as Final_PropertyStatus_Purchased1,
	fpl.[SellerName] as Final_SellerName,
	REPLACE(CONVERT(varchar, CAST(fpl.[PurchasingPrice] as money), 1), '.00', '') as Final_PurchasingPrice_Purchased1,
	-- FINAL Collateral Detail
	fcolp1.[Name] as Final_Collateral1_PropertyType,
	fcols1.[Name] as Final_Collateral1_PropertyStatus,
	((ISNULL(fcol.[AddressNo],'') + '-' + ISNULL(fcol.[AddressSt],'') + '-' + ISNULL(fcol.[AddressWard],'') + '-' + ISNULL(fcol.[AddressDistrict],'') + '-' + ISNULL(fcol.[AddressCity],'')))as Final_Collateral1_Address,
	fcol.[TitleDeedNo] as Final_Collateral1_TitleDeedNo,
	fcol.[SellerName] as Final_Collateral1_PropertyOwner,
	REPLACE(CONVERT(varchar, CAST(fcol.[FairMarketValue] as money), 1), '.00', '') as Final_Collateral1_PropertyValue,
	fcol.[PropertyGrading] as Final_Collateral1_PropertyGrading,
	ml.[RemarkCase],
	-- DISBURSEMENT
	ds.[DisbursalStatus],
	REPLACE(CONVERT(VARCHAR(11), ds.[DisbursedDate], 106), ' ', '/') as Disbursed_Date,
	ds.[LoanAccountNo],
	-- Loan Info
	stt.[StatusName] as CurrentStatus,
	ml.[ProgramCode],
	(case ml.[ExpectedLoan] when 1 then 'Yes' else 'No' end) as ExpressLoan,
	(case ml.[OSSentBack] when 1 then 'Yes' else 'No' end) as Pending_OSSendback,
	(case ml.[CISentBack] when 1 then 'Yes' else 'No' end) as Pending_CISendback,
	(select count(*) from dbo.AppActionLog al where al.[ApplicationNo] = ml.[ApplicationNo] and al.[Action] = 'CISendBack') as No_Of_CISentBack,
	(case ml.[TeleSentBack] when 1 then 'Yes' else 'No' end) as Pending_TeleVerifier_Sendback,
	(select count(*) from dbo.AppActionLog al1 where al1.[ApplicationNo] = ml.[ApplicationNo] and al1.[Action] = 'Tele_SentBack') as No_Of_TeleSentBack,
	(case (select count(*) from dbo.AppActionLog alr where alr.[ApplicationNo] = ml.[ApplicationNo] and alr.[Action]in('LOReworkToCI')) when '0' then 'No' else 'Yes' end) as Rework,
	(select count(*) from dbo.AppActionLog al2 where al2.[ApplicationNo] = ml.[ApplicationNo] and al2.[Action]in('LOReworkToCI')) as No_Of_Rework,
	-- MRTA
	(case a2.[MRTA] when 1 then 'Yes' else 'No' end) as MRTA,
	(case a2.[IncludeInsuranceLoan] when 1 then 'Finance' else 'Non-Finance' end) as MRTA_PaymentOption,
	REPLACE(CONVERT(varchar, CAST(a2.[MRTAAmount] as money), 1), '.00', '') as MRTA_Amount,
	REPLACE(CONVERT(varchar, CAST(a2.[TotalEMIMRTA] as money), 1), '.00', '') as TotalEMI_WithMRTA,
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmtMRTA] as money), 1), '.00', '') as LoanAmountApproved_WithMRTA,
	REPLACE(CONVERT(varchar, CAST(a2.[EMIMRTAAdded] as money), 1), '.00', '') as 'TotalEMI_WithMRTA_2%Added',
	REPLACE(CONVERT(varchar, CAST(a2.[DBRMRTAAdded] as money), 1), '.00', '') as 'DBR_WithMRTA_2%Added',
	(case tvf.[IsSMSSend] when 1 then 'Yes' else 'No' end) as SMSSent_TeleVerifier,
	(case ml.[IsSMSSend] when 1 then 'Yes' else 'No' end) as SMSSent_Underwriter	
from [dbo].[MLApplication] ml WITH (NOLOCK)
left join dbo.TeleVerifierForm tvf on tvf.[CustomerID] = ml.[MainBorrowerID]	
-- CUSTOMER
left join [dbo].[Customer] c WITH (NOLOCK) on c.[ID] = ml.[MainBorrowerID]
left join [dbo].[BlackCustomer] bl on bl.[IDNumber] = c.[PassportID]
left join [dbo].[Customer] c1 WITH (NOLOCK) on c1.[ID] = ml.[CoBorrower1]
left join [dbo].[Customer] c2 WITH (NOLOCK) on c2.[ID] = ml.[CoBorrower2]
left join [dbo].[Customer] c3 WITH (NOLOCK) on c3.[ID] = ml.[CoBorrower3]
-- Another Info
left join [dbo].[CompanyCode] cd on cd.[ID] = c.[CompanyCodeID]	
left join [dbo].[TradingArea] ta on ta.[ID] = ml.[TradingAreaID]
left join [dbo].[SalesChannel] s on s.[ID] = ml.[ChannelID]
left join [dbo].[CustomerType] ct on ct.[ID] = ml.[CustomerTypeID]
left join [dbo].[PaymentType] pt on pt.[ID] = ml.[PaymentTypeID]
left join [dbo].[ProgramType] prt on prt.[ID] = ml.[ProgramTypeID]
left join [dbo].[ProductType] pdt on pdt.[ID] = ml.[ProductType]
left join [dbo].[CustomerSegment] csg on csg.[ID] = ml.[CustomerSegmentID]
-- APPROVAL
left join [dbo].[ApprovalMLApplication] a WITH (NOLOCK) on a.[ID] = ml.[ApprovalID1]
left join [dbo].[ReworkReason] arr on arr.[ID] = a.[DeviationReasonID]
left join [dbo].[ReworkReason] rrr1 on rrr1.[ID] = a.[RejectReasonID]
left join [dbo].[ReworkReason] rrc1 on rrc1.[ID] = a.[CancelReasonID]
-- FINAL APPROVAL
left join [dbo].[ApprovalMLApplication] a2 WITH (NOLOCK) on a2.[ID] = ml.[ApprovalID2]
left join [dbo].[ReworkReason] a2rr on a2rr.[ID] = a2.[DeviationReasonID]
left join [dbo].[ReworkReason] rrr on rrr.[ID] = a2.[RejectReasonID]
left join [dbo].[ReworkReason] rrc on rrc.[ID] = a2.[CancelReasonID]
-- CIC MLAPPLICATION
left join [dbo].[CICMLApplication] cic WITH (NOLOCK) on cic.[ID] = ml.[CICMLApplicationID1]
left join [dbo].[CIC] ci on ci.[ID] = cic.[CICID]
left join [dbo].[CustomerIncome] cicins WITH (NOLOCK) on cicins.[ID] = cic.[IncomeSalariedID]
left join [dbo].[CustomerIncome] cicinh WITH (NOLOCK) on cicinh.[ID] = cic.[IncomeHouseRentalID]
left join [dbo].[CustomerIncome] cicinc WITH (NOLOCK) on cicinc.[ID] = cic.[IncomeCarRentalID]
left join [dbo].[CustomerIncome] cicinp WITH (NOLOCK) on cicinp.[ID] = cic.[IncomePrivateID]

left join [dbo].[CICMLApplication] cic2 WITH (NOLOCK) on cic2.[ID] = ml.[CICMLApplicationID2]
left join [dbo].[CIC] ci2 on ci2.[ID] = cic2.[CICID]
left join [dbo].[CICMLApplication] cic3 WITH (NOLOCK) on cic3.[ID] = ml.[CICMLApplicationID3]
left join [dbo].[CIC] ci3 on ci3.[ID] = cic3.[CICID]
left join [dbo].[CICMLApplication] cic4 WITH (NOLOCK) on cic4.[ID] = ml.[CICMLApplicationID4]	
left join [dbo].[CIC] ci4 on ci4.[ID] = cic4.[CICID]
-- Disbursement
left join [dbo].[Disbursement] ds WITH (NOLOCK) on ds.[ApplicationNo] = ml.[ApplicationNo]
-- Property Info
left join [dbo].[PIMLApplication] pl WITH (NOLOCK) on pl.[ID] = ml.[PropertyInfoID1]
left join [dbo].[PropertyType] aprt on aprt.[ID] = pl.[PropertyTypeID]
left join [dbo].[PropertyStat] aprs on aprs.[ID] = pl.[PropertyStatusID]
-- FINAL PropertyInfo
left join [dbo].[PIMLApplication] fpl WITH (NOLOCK) on fpl.[ID] = ml.[FinalProperty1]
left join [dbo].[PropertyType] fprt on fprt.[ID] = fpl.[PropertyTypeID]
left join [dbo].[PropertyStat] fprs on fprs.[ID] = fpl.[PropertyStatusID]
-- FINAL Collateral
left join [dbo].[PIMLApplication] fcol WITH (NOLOCK) on fcol.[ID] = ml.[FinalCollateral1]
left join [dbo].[PropertyType] fcolp1 on fcolp1.[ID] = fcol.[PropertyTypeID]
left join [dbo].[PropertyStat] fcols1 on fcols1.[ID] = fcol.[PropertyStatusID]

left join [dbo].[LoginUser] u1 on u1.[PeoplewiseID] = ml.[CI1]
left join [dbo].[LoginUser] u2 on u2.[PeoplewiseID] = ml.[CI2]
left join [dbo].[tblStatusName] stt on stt.[ID] = ml.[Status]
where 
([dbo]._fGetShortDate(ml.[ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
[dbo]._fGetShortDate(ml.[ReceivedDate]) <= [dbo]._fGetShortDate(@tDate))
order by ml.[ReceivedDate]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_mis]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_mis] 
@fDate datetime,
	@tDate datetime,
	@limitedIncome int
AS
BEGIN
select 
	ROW_NUMBER() over (order by ml.[ReceivedDate]) as Seq,
	ml.[ApplicationNo] as App_No, 
	REPLACE(CONVERT(VARCHAR(11), ml.[ReceivedDate], 106), ' ', '/') as Received_Date,
	c.[FullName] as CustomerName, 
	c.[PassportID] as CustomerID, 
	c.[PreviousID] as CustomerID_Previous,
	c.[NationalityCode] as Nationality,
	REPLACE(CONVERT(VARCHAR(11), c.[DOB], 106), ' ', '/') as DOB,
	c.[PassportID] as NationalID,
	c.[CurrentPosition] as JobTitle, 
	cd.[Name] as CompanyCode,
	cd.[CompanyType],
	c.TypeLabourContract,
	REPLACE(CONVERT(VARCHAR(11), c.[ContractStart], 106), ' ', '/') as [Start Date],
	c.ContractLength,
	ta.[Name] as Business_TradingArea,	
	REPLACE(CONVERT(VARCHAR(11), (DATEADD(month, -CONVERT(int,c.[TotalServiceYears]), getdate())) , 106), ' ', '/') as JoinDate,
	ci.[Name] as CIC,
	REPLACE(CONVERT(varchar, CAST(((ISNULL(cic.[Debt1Current],0) + ISNULL(cic.[Debt2Current],0) + ISNULL(cic.[Debt3Current],0) + ISNULL(cic.[Debt4Current],0) + ISNULL(cic.[DebtOtherCurrent],0)) + 
	 (ISNULL(cic2.[Debt1Current],0) + ISNULL(cic2.[Debt2Current],0) + ISNULL(cic2.[Debt3Current],0) + ISNULL(cic2.[Debt4Current],0) + ISNULL(cic2.[DebtOtherCurrent],0)) + 
	 (ISNULL(cic3.[Debt1Current],0) + ISNULL(cic3.[Debt2Current],0) + ISNULL(cic3.[Debt3Current],0) + ISNULL(cic3.[Debt4Current],0) + ISNULL(cic3.[DebtOtherCurrent],0)) + 
	 (ISNULL(cic4.[Debt1Current],0) + ISNULL(cic4.[Debt2Current],0) + ISNULL(cic4.[Debt3Current],0) + ISNULL(cic4.[Debt4Current],0) + ISNULL(cic4.[DebtOtherCurrent],0))) as money), 1), '.00', '') as 'O/S_At_Other_Bank',
	REPLACE(CONVERT(varchar, CAST(((ISNULL(cic.[Debt1EMI],0) + ISNULL(cic.[Debt2EMI],0) + ISNULL(cic.[Debt3EMI],0) + ISNULL(cic.[Debt4EMI],0) + ISNULL(cic.[DebtOtherEMI],0)) + 
	 (ISNULL(cic2.[Debt1EMI],0) + ISNULL(cic2.[Debt2EMI],0) + ISNULL(cic2.[Debt3EMI],0) + ISNULL(cic2.[Debt4EMI],0) + ISNULL(cic2.[DebtOtherEMI],0)) + 
	 (ISNULL(cic3.[Debt1EMI],0) + ISNULL(cic3.[Debt2EMI],0) + ISNULL(cic3.[Debt3EMI],0) + ISNULL(cic3.[Debt4EMI],0) + ISNULL(cic3.[DebtOtherEMI],0)) + 
	 (ISNULL(cic4.[Debt1EMI],0) + ISNULL(cic4.[Debt2EMI],0) + ISNULL(cic4.[Debt3EMI],0) + ISNULL(cic4.[Debt4EMI],0) + ISNULL(cic4.[DebtOtherEMI],0))) as money), 1), '.00', '') as EMI_At_Other_Bank,
	REPLACE(CONVERT(varchar, CAST(ml.[AmountRequest] as money), 1), '.00', '') as Loan_Amt_Applied,	
	ml.[Tenor] as 'Tenor (month)',
	ml.[LoanPurposeCode] as Loan_Purpose,
	-- Another Info
	s.[Name] as Channel,
	ct.[Name] as Branch_Location,
	ml.[ARMCode],
	pt.[Name] as Payment_Method,
	prt.[Name] as Programs,
	prt.[ICT] as Programs_ICT,
	pdt.[Name] as ProductType,
	-- Approval	
	REPLACE(CONVERT(varchar, CAST((case when cic.[TotalIncome] >= @limitedIncome then (ISNULL(cic.[TotalIncome],0) + ISNULL(cic2.[TotalIncome],0) + ISNULL(cic3.[TotalIncome],0)) else (0 + ISNULL(cic2.[TotalIncome],0) + ISNULL(cic3.[TotalIncome],0)) end) as money), 1), '.00', '') as TotalIncome,
	REPLACE(CONVERT(varchar, CAST(cicins.[TotalIncome] as money), 1), '.00', '') as Salary_Income,
	(ISNULL(cicinh.[TotalIncome],0) + ISNULL(cicinc.[TotalIncome],0) + ISNULL(cicinp.[TotalIncome],0)) as 'Other Incomes (Non-salary)',
	(case (select count(*) from dbo.BlackCustomer bc where bc.[IDNumber] = c.[PassportID]) when 0 then 'No' else 'Yes' end) as BlackList_Check,	
	u1.[FullName] as UserRecommend,
	u2.[FullName] as Underwriter,
	a.[Status] as DECISION_STATUS_AIP,
	REPLACE(CONVERT(varchar, CAST(a.[LoanAmount] as money), 1), '.00', '') as Loan_Amt_Approved_AIP,
	REPLACE(CONVERT(VARCHAR(11), a.[DecisionDate], 106), ' ', '/') as Decision_Date,
	a.[Level] as AIP_Level,
	REPLACE(CONVERT(VARCHAR(11), a2.[DecisionDate], 106), ' ', '/') as Final_DecisionDate,
	a2.[Status] as DECISION_STATUS,
	a2.[Level] as 'Level',
	(case rrr.[Name] when NULL then rrc.[Name] else rrr.[Name] end) as 'Rejected or Cancelled Reasons',
	ml.[Remarks],
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmount] as money), 1), '.00', '') as Loan_Amt_Approved,
	a2.[Tenor] as 'Tenor (month)',
	(CONVERT(varchar, CAST(a2.[CommercialInterest] as money), 1) + '%') as Interest,	 
	REPLACE(CONVERT(varchar, CAST(a2.[TotalEMI] as money), 1), '.00', '') as TotalEMI,
	REPLACE(CONVERT(varchar, CAST(a2.[NormalDBR] as money), 1), '.00', '') + '%' as NormalDBR,
	REPLACE(CONVERT(varchar, CAST(a2.[DBR] as money), 1), '.00', '') + '%' as 'DBR - 2% Added',
	REPLACE(CONVERT(varchar, CAST(a2.[TotalExposue] as money), 1), '.00', '') + '%' as Total_Exposure,
	REPLACE(CONVERT(varchar, CAST(((NULLIF(a2.[TotalExposue],0) / NULLIF(a2.[TotalEMI],0))*100) as money), 1), '.00', '') + '%' as Total_MUE,
	REPLACE(CONVERT(varchar, CAST(a2.[LTV] as money), 1), '.00', '') + '%' as LTV,
	REPLACE(CONVERT(varchar, CAST(a2.[MaxLTV] as money), 1), '.00', '') + '%' as LTV_With_MRTA,
	-- Disbursement
	ds.[DisbursalStatus],
	REPLACE(CONVERT(VARCHAR(11), ds.[DisbursedDate], 106), ' ', '/') as Disbursed_Date,
	ds.[LoanAccountNo],
	-- Application
	stt.[StatusName] as CurrentStatus,
	ml.[ProgramCode],
	(case ml.[ExpectedLoan] when 1 then 'Yes' else 'No' end) as ExpressLoan,
	(case ml.[OSSentBack] when 1 then 'Yes' else 'No' end) as Pending_OSSendback,
	(case ml.[CISentBack] when 1 then 'Yes' else 'No' end) as Pending_CISendback,
	-- Approval
	arr.[Name] as 'L2Plus Deviation (AIP)',	
	REPLACE(CONVERT(varchar, CAST(a.[RePricing] as money), 1), '.00', '') as 'Re-pricing Frequently (AIP)',
	-- PropertyInformation
	pl.[DeveloperName] as Developer_Property1,
	pl2.[DeveloperName] as Developer_Property2,
	pl3.[DeveloperName] as Developer_Property3,
	pl4.[DeveloperName] as Developer_Property4,
	pl5.[DeveloperName] as Developer_Property5,
	-- Final PropertyInformation
	a2rr.[Name] as 'L2Plus Deviation (FINAL)',
	REPLACE(CONVERT(varchar, CAST(a2.[RePricing] as money), 1), '.00', '') as 'Re-pricing Frequently (FINAL)',
	fpl.[DeveloperName] as Developer_FinalProperty1,
	fpl2.[DeveloperName] as Developer_FinalProperty2,
	fpl3.[DeveloperName] as Developer_FinalProperty3,
	fpl4.[DeveloperName] as Developer_FinalProperty4,
	fpl5.[DeveloperName] as Developer_FinalProperty5,
	csg.[Name] as CustomerSegment,
	-- FinalProperty 
	fprt.[Name] as PropertyType_Purchased1,
	fprt2.[Name] as PropertyType_Purchased2,
	fprt3.[Name] as PropertyType_Purchased3,
	fprt4.[Name] as PropertyType_Purchased4,
	fprt5.[Name] as PropertyType_Purchased5,
	fprs.[Name]	as PropertyStatus_Purchased1,
	fprs2.[Name] as PropertyStatus_Purchased2,
	fprs3.[Name] as PropertyStatus_Purchased3,
	fprs4.[Name] as PropertyStatus_Purchased4,
	fprs5.[Name] as PropertyStatus_Purchased5,
	-- FinalCollateral
	fcolp1.[Name] as PropertyType_Collateral1,
	fcolp2.[Name] as PropertyType_Collateral2,
	fcolp3.[Name] as PropertyType_Collateral3,	
	fcols1.[Name] as PropertyStatus_Collateral1,
	fcols2.[Name] as PropertyStatus_Collateral2,
	fcols3.[Name] as PropertyStatus_Collateral3,
	(case cic.[Over40TotalIncome] when 1 then 'YES' else 'NO' end) as 'Collateral Rental Income  > 40%(Main Borrower)',
	(case cic2.[Over40TotalIncome] when 1 then 'YES' else 'NO' end) as 'ollateral Rental Income  > 40%(Co-Borrower 1)',
	-- Customer
	ml.[SalesCode],
	c.[MobileNo] as Customer_MobilePhone,
	((ISNULL(c.ResidentialAddress,'') + '-' + ISNULL(c.Ward,'') + '-' + ISNULL(c.District,'') + '-' + ISNULL(c.City,'')))as Customer_Address,
	-- MRTA
	REPLACE(CONVERT(varchar, CAST(a2.[MRTAAmount] as money), 1), '.00', '') as MRTA_Amount,
	REPLACE(CONVERT(varchar, CAST(a2.[TotalEMIMRTA] as money), 1), '.00', '') as TotalEMI_WithMRTA,
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmtMRTA] as money), 1), '.00', '') as LoanAmountApproved_WithMRTA,
	-- Customer & CIC
	REPLACE(CONVERT(VARCHAR(11), c1.[DOB], 106), ' ', '/') as DOB_CoBorrower1,
	REPLACE(CONVERT(VARCHAR(11), c2.[DOB], 106), ' ', '/') as DOB_CoBorrower2,
	REPLACE(CONVERT(VARCHAR(11), c3.[DOB], 106), ' ', '/') as DOB_CoBorrower3,
	ci2.[Name] as CIC_CoBorrower1,
	ci3.[Name] as CIC_CoBorrower2,
	ci4.[Name] as CIC_CoBorrower3,
	-- FinalCollateral
	REPLACE(CONVERT(varchar, CAST(fcol.[FairMarketValue] as money), 1), '.00', '') as Property_Value_Collateral_Detail_1,
	REPLACE(CONVERT(varchar, CAST(fcol2.[FairMarketValue] as money), 1), '.00', '') as Property_Value_Collateral_Detail_2,
	REPLACE(CONVERT(varchar, CAST(fcol3.[FairMarketValue] as money), 1), '.00', '') as Property_Value_Collateral_Detail_3,
	fcol.[PropertyGrading] as PropertyGrading_Collateral_Detail_1,
	fcol2.[PropertyGrading] as PropertyGrading_Collateral_Detail_2,
	fcol3.[PropertyGrading] as PropertyGrading_Collateral_Detail_3,
	-- Customer RLSCompanyCode
	c.[RLSCompanyCode] as RLSCompanyCode_MB,
	c1.[RLSCompanyCode] as RLSCompanyCode_CB1,
	c2.[RLSCompanyCode] as RLSCompanyCode_CB2,
	c3.[RLSCompanyCode] as RLSCompanyCode_CB3,
	-- Income Salaried
	REPLACE(CONVERT(varchar, CAST(cicins.[Income1] as money), 1), '.00', '') as Income_Salaried_1,
	REPLACE(CONVERT(varchar, CAST(cicins.[Income2] as money), 1), '.00', '') as Income_Salaried_2,
	REPLACE(CONVERT(varchar, CAST(cicins.[Income3] as money), 1), '.00', '') as Income_Salaried_3,
	REPLACE(CONVERT(varchar, CAST(cicins.[Income4] as money), 1), '.00', '') as Income_Salaried_4,
	-- Income HouseRental
	REPLACE(CONVERT(varchar, CAST(cicinh.[Income1] as money), 1), '.00', '') as Income_HouseRental_1,
	REPLACE(CONVERT(varchar, CAST(cicinh.[Income2] as money), 1), '.00', '') as Income_HouseRental_2,
	REPLACE(CONVERT(varchar, CAST(cicinh.[Income3] as money), 1), '.00', '') as Income_HouseRental_3,
	REPLACE(CONVERT(varchar, CAST(cicinh.[Income4] as money), 1), '.00', '') as Income_HouseRental_4,
	-- Income CarRental
	REPLACE(CONVERT(varchar, CAST(cicinc.[Income1] as money), 1), '.00', '') as Income_CarRental_1,
	REPLACE(CONVERT(varchar, CAST(cicinc.[Income2] as money), 1), '.00', '') as Income_CarRental_2,
	REPLACE(CONVERT(varchar, CAST(cicinc.[Income3] as money), 1), '.00', '') as Income_CarRental_3,
	REPLACE(CONVERT(varchar, CAST(cicinc.[Income4] as money), 1), '.00', '') as Income_CarRental_4,
	-- Income Private
	REPLACE(CONVERT(varchar, CAST(cicinp.[Income1] as money), 1), '.00', '') as Income_PrivateBusiness_1,
	REPLACE(CONVERT(varchar, CAST(cicinp.[Income2] as money), 1), '.00', '') as Income_PrivateBusiness_2,
	REPLACE(CONVERT(varchar, CAST(cicinp.[Income3] as money), 1), '.00', '') as Income_PrivateBusiness_3,	
	REPLACE(CONVERT(varchar, CAST(cicinp.[Income4] as money), 1), '.00', '') as Income_PrivateBusiness_4,
	-- Co-Borrowers
	c1.[PassportID] as CoBorrower1_ID,
	c2.[PassportID] as CoBorrower2_ID,
	c3.[PassportID] as CoBorrower3_ID,
	-- Collateral
	((ISNULL(fcol.[AddressNo],'') + '-' + ISNULL(fcol.[AddressSt],'') + '-' + ISNULL(fcol.[AddressWard],'') + '-' + ISNULL(fcol.[AddressDistrict],'') + '-' + ISNULL(fcol.[AddressCity],'')))as Collateral1_Address,
	((ISNULL(fcol2.[AddressNo],'') + '-' + ISNULL(fcol2.[AddressSt],'') + '-' + ISNULL(fcol2.[AddressWard],'') + '-' + ISNULL(fcol2.[AddressDistrict],'') + '-' + ISNULL(fcol2.[AddressCity],'')))as Collateral2_Address,
	((ISNULL(fcol3.[AddressNo],'') + '-' + ISNULL(fcol3.[AddressSt],'') + '-' + ISNULL(fcol3.[AddressWard],'') + '-' + ISNULL(fcol3.[AddressDistrict],'') + '-' + ISNULL(fcol3.[AddressCity],'')))as Collateral3_Address,
	fcol.[TitleDeedNo] as Collateral1_TitleDeedNo,
	fcol2.[TitleDeedNo] as Collateral2_TitleDeedNo,
	fcol3.[TitleDeedNo] as Collateral3_TitleDeedNo,
	-- MRTA
	(case a2.[MRTA] when 1 then 'Yes' else 'No' end) as MRTA,
	(case a2.[IncludeInsuranceLoan] when 1 then 'Finance' else 'Non-Finance' end) as MRTA_PaymentOption,
	a2.[MRTAApplicationNumber] as MRTA_Application_Number,
	a2.[MRTALifeAssured] as MRTA_Life_Assured,
	REPLACE(CONVERT(varchar, CAST(a2.[MRTAAppliedPremium] as money), 1), '.00', '') as MRTA_Applied_Single_Premium,
	REPLACE(CONVERT(varchar, CAST(a2.[MRTAAppliedSumAssured] as money), 1), '.00', '') as MRTA_Applied_Sum_Assured,
	REPLACE(CONVERT(varchar, CAST(a2.[MRTAAmount] as money), 1), '.00', '') as MRTA_Amount,
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmtMRTA] as money), 1), '.00', '') as Loan_AmountApproved_WithMRTA,
	REPLACE(CONVERT(varchar, CAST(a2.[TotalEMIMRTA] as money), 1), '.00', '') as TotalEMI_WithMRTA,
	ml.EOpsTxnRefNo,
	ml.HardCopyAppDate,
	REPLACE(CONVERT(varchar, CAST(ds.[DisbursedAmount] as money), 1), '.00', '') as Disbursed_Amount,
	(select Scenario from DisbursalScenario where Id = (select DisbursalScenarioID from ApprovalMLDisbursementCondition 
															where ID = (SELECT (CASE WHEN DisbursementID IS NOT NULL THEN DisbursementID
																		ELSE (CASE WHEN PostDisbursementID IS NOT NULL THEN PostDisbursementID
																			ELSE PreDisbursementID END) END) FROM ApprovalMLApplication WHERE ml.ApprovalID2 IS NOT NULL AND ID = ml.ApprovalID2))) AS [FinalDisbursementScenario],
	ml.SchemeCode																	
from [dbo].[MLApplication] ml WITH (NOLOCK)
-- CUSTOMER
left join [dbo].[Customer] c WITH (NOLOCK) on c.[ID] = ml.[MainBorrowerID]
left join [dbo].[BlackCustomer] bl on bl.[IDNumber] = c.[PassportID]
left join [dbo].[Customer] c1 WITH (NOLOCK) on c1.[ID] = ml.[CoBorrower1]
left join [dbo].[Customer] c2 WITH (NOLOCK) on c2.[ID] = ml.[CoBorrower2]
left join [dbo].[Customer] c3 WITH (NOLOCK) on c3.[ID] = ml.[CoBorrower3]
-- Another Info
left join [dbo].[CompanyCode] cd on cd.[ID] = c.[CompanyCodeID]	
left join [dbo].[TradingArea] ta on ta.[ID] = ml.[TradingAreaID]
left join [dbo].[SalesChannel] s on s.[ID] = ml.[ChannelID]
left join [dbo].[CustomerType] ct on ct.[ID] = ml.[CustomerTypeID]
left join [dbo].[PaymentType] pt on pt.[ID] = ml.[PaymentTypeID]
left join [dbo].[ProgramType] prt on prt.[ID] = ml.[ProgramTypeID]
left join [dbo].[ProductType] pdt on pdt.[ID] = ml.[ProductType]
left join [dbo].[CustomerSegment] csg on csg.[ID] = ml.[CustomerSegmentID]
-- APPROVAL
left join [dbo].[ApprovalMLApplication] a WITH (NOLOCK) on a.[ID] = ml.[ApprovalID1]
left join [dbo].[ReworkReason] arr on arr.[ID] = a.[DeviationReasonID]
left join [dbo].[ApprovalMLApplication] a2 WITH (NOLOCK) on a2.[ID] = ml.[ApprovalID2]
left join [dbo].[ReworkReason] a2rr on a2rr.[ID] = a2.[DeviationReasonID]
left join [dbo].[ReworkReason] rrr on rrr.[ID] = a2.[RejectReasonID]
left join [dbo].[ReworkReason] rrc on rrc.[ID] = a2.[CancelReasonID]
-- CIC MLAPPLICATION
left join [dbo].[CICMLApplication] cic WITH (NOLOCK) on cic.[ID] = ml.[CICMLApplicationID1]
left join [dbo].[CIC] ci on ci.[ID] = cic.[CICID]
left join [dbo].[CustomerIncome] cicins WITH (NOLOCK) on cicins.[ID] = cic.[IncomeSalariedID]
left join [dbo].[CustomerIncome] cicinh WITH (NOLOCK) on cicinh.[ID] = cic.[IncomeHouseRentalID]
left join [dbo].[CustomerIncome] cicinc WITH (NOLOCK) on cicinc.[ID] = cic.[IncomeCarRentalID]
left join [dbo].[CustomerIncome] cicinp WITH (NOLOCK) on cicinp.[ID] = cic.[IncomePrivateID]

left join [dbo].[CICMLApplication] cic2 WITH (NOLOCK) on cic2.[ID] = ml.[CICMLApplicationID2]
left join [dbo].[CIC] ci2 on ci2.[ID] = cic2.[CICID]
left join [dbo].[CICMLApplication] cic3 WITH (NOLOCK) on cic3.[ID] = ml.[CICMLApplicationID3]
left join [dbo].[CIC] ci3 on ci3.[ID] = cic3.[CICID]
left join [dbo].[CICMLApplication] cic4 WITH (NOLOCK) on cic4.[ID] = ml.[CICMLApplicationID4]	
left join [dbo].[CIC] ci4 on ci4.[ID] = cic4.[CICID]
-- Disbursement
left join [dbo].[Disbursement] ds WITH (NOLOCK) on ds.[ApplicationNo] = ml.[ApplicationNo]
-- Property Info
left join [dbo].[PIMLApplication] pl WITH (NOLOCK) on pl.[ID] = ml.[PropertyInfoID1]
left join [dbo].[PIMLApplication] pl2 WITH (NOLOCK) on pl2.[ID] = ml.[PropertyInfoID2]
left join [dbo].[PIMLApplication] pl3 WITH (NOLOCK) on pl3.[ID] = ml.[PropertyInfoID3]
left join [dbo].[PIMLApplication] pl4 WITH (NOLOCK) on pl4.[ID] = ml.[PropertyInfoID4]
left join [dbo].[PIMLApplication] pl5 WITH (NOLOCK) on pl5.[ID] = ml.[PropertyInfoID5]
-- FINAL PropertyInfo
left join [dbo].[PIMLApplication] fpl WITH (NOLOCK) on fpl.[ID] = ml.[FinalProperty1]
left join [dbo].[PropertyType] fprt on fprt.[ID] = fpl.[PropertyTypeID]
left join [dbo].[PropertyStat] fprs on fprs.[ID] = fpl.[PropertyStatusID]

left join [dbo].[PIMLApplication] fpl2 WITH (NOLOCK) on fpl2.[ID] = ml.[FinalProperty2]
left join [dbo].[PropertyType] fprt2 on fprt2.[ID] = fpl2.[PropertyTypeID]
left join [dbo].[PropertyStat] fprs2 on fprs2.[ID] = fpl2.[PropertyStatusID]

left join [dbo].[PIMLApplication] fpl3 WITH (NOLOCK) on fpl3.[ID] = ml.[FinalProperty3]
left join [dbo].[PropertyType] fprt3 on fprt3.[ID] = fpl3.[PropertyTypeID]
left join [dbo].[PropertyStat] fprs3 on fprs3.[ID] = fpl3.[PropertyStatusID]

left join [dbo].[PIMLApplication] fpl4 WITH (NOLOCK) on fpl4.[ID] = ml.[FinalProperty4]
left join [dbo].[PropertyType] fprt4 on fprt4.[ID] = fpl4.[PropertyTypeID]
left join [dbo].[PropertyStat] fprs4 on fprs4.[ID] = fpl4.[PropertyStatusID]

left join [dbo].[PIMLApplication] fpl5 WITH (NOLOCK) on fpl5.[ID] = ml.[FinalProperty5]
left join [dbo].[PropertyType] fprt5 on fprt5.[ID] = fpl5.[PropertyTypeID]
left join [dbo].[PropertyStat] fprs5 on fprs5.[ID] = fpl5.[PropertyStatusID]
-- FINAL Collateral
left join [dbo].[PIMLApplication] fcol WITH (NOLOCK) on fcol.[ID] = ml.[FinalCollateral1]
left join [dbo].[PropertyType] fcolp1 on fcolp1.[ID] = fcol.[PropertyTypeID]
left join [dbo].[PropertyStat] fcols1 on fcols1.[ID] = fcol.[PropertyStatusID]

left join [dbo].[PIMLApplication] fcol2 WITH (NOLOCK) on fcol2.[ID] = ml.[FinalCollateral2]
left join [dbo].[PropertyType] fcolp2 on fcolp2.[ID] = fcol2.[PropertyTypeID]
left join [dbo].[PropertyStat] fcols2 on fcols2.[ID] = fcol2.[PropertyStatusID]

left join [dbo].[PIMLApplication] fcol3 WITH (NOLOCK) on fcol3.[ID] = ml.[FinalCollateral3]
left join [dbo].[PropertyType] fcolp3 on fcolp3.[ID] = fcol3.[PropertyTypeID]
left join [dbo].[PropertyStat] fcols3 on fcols3.[ID] = fcol3.[PropertyStatusID]

left join [dbo].[LoginUser] u1 on u1.[PeoplewiseID] = ml.[CI1]
left join [dbo].[LoginUser] u2 on u2.[PeoplewiseID] = ml.[CI2]
left join [dbo].[tblStatusName] stt on stt.[ID] = ml.[Status]
where 
([dbo]._fGetShortDate([ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
[dbo]._fGetShortDate([ReceivedDate]) <= [dbo]._fGetShortDate(@tDate))
order by ml.[ReceivedDate]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_nsg]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_nsg] 
	@fromDate datetime,
	@toDate datetime,
	@actionNSG varchar(50)
AS

	select
		m.[ApplicationNo],
		CONVERT(VARCHAR(24), m.[ReceivedDate], 113) as ReceivedDate,
		stt.[StatusName] as CurrentStatus,
		ar.[Status] as FinalApprovalStatus,
		CONVERT(VARCHAR(11), ar.[DecisionDate], 106) as FinalDecisionDate,
		CONVERT(VARCHAR(24), m.[ActionDateNSG], 113) as ActionDateNSG,
		m.[QueueNSG],
		(
			select top 1 u.FullName from dbo.AppActionLog a left join dbo.LoginUser u on u.PeoplewiseId = a.ActionBy
			where a.ApplicationNo = m.ApplicationNo and a.Action = @actionNSG order by a.ActionDate desc
		) User_SelectNSG,
		m.[RemarkCase] as Remark_Underwriter,
		tvf.[Remarks] as Remark_TeleVerifier,
		c.[FullName],
		c.[PassportID],
		c.[MobileNo],
		s.[Name] as Channel,
		ct.[Name] as BranchLocation,		
		pt.[Name] as ProductType,
		cc.[Name] as CompanyCode,
		cc.[CompanyType]
	from dbo.MLApplication m
	left join dbo.ApprovalMLApplication ar on ar.[ID] = m.[ApprovalID2]
	left join dbo.Customer c on c.[ID] = m.[MainBorrowerID]
	left join dbo.CompanyCode cc on cc.[ID] = c.[CompanyCodeID]
	left join dbo.SalesChannel s on s.[ID] = m.[ChannelID]
	left join dbo.CustomerType ct on ct.[ID] = m.[CustomerTypeID]
	left join dbo.tblStatusName stt on stt.[ID] = m.[Status]
	left join dbo.ProductType pt on pt.[ID]	= m.[ProductTypeID]	
	left join dbo.TeleVerifierForm tvf on tvf.[CustomerID] = m.[MainBorrowerID]
	where 
		(	m.[INSG] = 1 and 
			(dbo._fGetShortDate(m.[ActionDateNSG]) >= dbo._fGetShortDate(@fromDate) and
			dbo._fGetShortDate(m.[ActionDateNSG]) <= dbo._fGetShortDate(@toDate))
		)



GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_nsg_ext]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_nsg_ext] 
	@fromDate datetime,
	@toDate datetime,
	@actionNSG varchar(50)
AS

	select
		m.[ApplicationNo],
		CONVERT(VARCHAR(24), m.[ReceivedDate], 113) as ReceivedDate,
		stt.[StatusName] as CurrentStatus,
		ar.[Status] as FinalApprovalStatus,
		CONVERT(VARCHAR(11), ar.[DecisionDate], 106) as FinalDecisionDate,
		CONVERT(VARCHAR(24), m.[ActionDateNSG], 113) as ActionDateNSG,
		m.[QueueNSG],
		(
			select top 1 u.FullName from dbo.AppActionLog a left join dbo.LoginUser u on u.PeoplewiseId = a.ActionBy
			where a.ApplicationNo = m.ApplicationNo and a.Action = @actionNSG order by a.ActionDate desc
		) User_SelectNSG,
		m.[RemarkCase] as Remark_Underwriter,
		tvf.[Remarks] as Remark_TeleVerifier,
		c.[FullName],
		c.[PassportID],
		c.[MobileNo],
		s.[Name] as Channel,
		ct.[Name] as BranchLocation,		
		pt.[Name] as ProductType,
		cc.[Name] as CompanyCode,
		cc.[CompanyType]
	from dbo.MLApplication m
	left join dbo.ApprovalMLApplication ar on ar.[ID] = m.[ApprovalID2]
	left join dbo.Customer c on c.[ID] = m.[MainBorrowerID]
	left join dbo.CompanyCode cc on cc.[ID] = c.[CompanyCodeID]
	left join dbo.SalesChannel s on s.[ID] = m.[ChannelID]
	left join dbo.CustomerType ct on ct.[ID] = m.[CustomerTypeID]
	left join dbo.tblStatusName stt on stt.[ID] = m.[Status]
	left join dbo.ProductType pt on pt.[ID]	= m.[ProductTypeID]	
	left join dbo.TeleVerifierForm tvf on tvf.[CustomerID] = m.[MainBorrowerID]
	where 
		(	m.[INSG] = 1 and 
			(dbo._fGetShortDate(m.[ActionDateNSG]) >= dbo._fGetShortDate(@fromDate) and
			dbo._fGetShortDate(m.[ActionDateNSG]) <= dbo._fGetShortDate(@toDate))
		)



GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_post_disbursement_condition]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_post_disbursement_condition] 
	@fDate datetime,
	@tDate datetime,
	@limitedIncome int
AS
BEGIN
	DECLARE @NewLineChar AS CHAR(2) SET @NewLineChar = CHAR(13) + CHAR(10)
	--
	SELECT ROW_NUMBER() over (order by ml.[ReceivedDate]) as Seq,
	ml.[ApplicationNo] as 'App No.', 
	CONVERT(VARCHAR(24), ml.[ReceivedDate], 113) as 'Receiving Date',
	ml.[LoanPurposeCode] as 'Loan purpose',
	pdt.[Name] as 'Product Type',	
	s.[Name] as Channel,
	ml.[PIDOfSaleStaff] as 'Peoplewise ID of Sale-Staff',
	ds.[LoanAccountNo] as 'Loan Account No.',
	ct.[Name] as 'Branch Location',
	c.[FullName] as 'Customer Name', 
	--
	(CONVERT(nvarchar(4000),a1pos.[Condition1]) + @NewLineChar + CONVERT(nvarchar(4000),a1pos.[Condition2]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a1pos.[Condition3]) + @NewLineChar + CONVERT(nvarchar(4000),a1pos.[Condition4]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a1pos.[Condition5]) + @NewLineChar + CONVERt(nvarchar(4000),a1pos.[Condition6]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a1pos.[Condition7]) + @NewLineChar + CONVERT(nvarchar(4000),a1pos.[Condition8]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a1pos.[Condition9]) + @NewLineChar + CONVERT(nvarchar(4000),a1pos.[Condition10]) + @NewLineChar +
	 CONVERT(nvarchar(4000),a1pos.[Condition11]) + @NewLineChar + CONVERT(nvarchar(4000),a1pos.[Condition12])) 
	 as 'Post-Disbursement',
	 --
	 CONVERT(nvarchar(4000),a2pos.[Condition1]) as 'Final Post-Disbursement (Others)',
	 --
	 REPLACE(CONVERT(VARCHAR(11), ds.[DisbursedDate], 106), ' ', '/') as 'Disbursed Date',
	 --
	 REPLACE(CONVERT(VARCHAR(11), ml.[PostDisbursementConditionExpiryDate], 106), ' ', '/') as 'Post disbursement condition expiry date',
	 --
	 DATEDIFF(D, ml.[PostDisbursementConditionExpiryDate], GETDATE()) as 'Aging days',
	 --
	 ds.[DisbursalStatus] as 'Disbursal Status',
	 a.Remark as Remarks
	from [dbo].[MLApplication] ml WITH (NOLOCK)
	left join dbo.TeleVerifierForm tvf on tvf.[CustomerID] = ml.[MainBorrowerID]	
	-- CUSTOMER
	left join [dbo].[Customer] c WITH (NOLOCK) on c.[ID] = ml.[MainBorrowerID]
	left join [dbo].[BlackCustomer] bl on bl.[IDNumber] = c.[PassportID]
	left join [dbo].[Customer] c1 WITH (NOLOCK) on c1.[ID] = ml.[CoBorrower1]
	left join [dbo].[Customer] c2 WITH (NOLOCK) on c2.[ID] = ml.[CoBorrower2]
	left join [dbo].[Customer] c3 WITH (NOLOCK) on c3.[ID] = ml.[CoBorrower3]
	-- Another Info
	left join [dbo].[CompanyCode] cd on cd.[ID] = c.[CompanyCodeID]	
	left join [dbo].[TradingArea] ta on ta.[ID] = ml.[TradingAreaID]
	left join [dbo].[SalesChannel] s on s.[ID] = ml.[ChannelID]
	left join [dbo].[CustomerType] ct on ct.[ID] = ml.[CustomerTypeID]
	left join [dbo].[PaymentType] pt on pt.[ID] = ml.[PaymentTypeID]
	left join [dbo].[ProgramType] prt on prt.[ID] = ml.[ProgramTypeID]
	left join [dbo].[ProductType] pdt on pdt.[ID] = ml.[ProductType]
	left join [dbo].[CustomerSegment] csg on csg.[ID] = ml.[CustomerSegmentID]
	-- APPROVAL
	left join [dbo].[ApprovalMLApplication] a WITH (NOLOCK) on a.[ID] = ml.[ApprovalID1]
	left join [dbo].[ReworkReason] arr on arr.[ID] = a.[DeviationReasonID]
	left join [dbo].[ReworkReason] rrr1 on rrr1.[ID] = a.[RejectReasonID]
	left join [dbo].[ReworkReason] rrc1 on rrc1.[ID] = a.[CancelReasonID]
	-- FINAL APPROVAL
	left join [dbo].[ApprovalMLApplication] a2 WITH (NOLOCK) on a2.[ID] = ml.[ApprovalID2]
	left join [dbo].[ReworkReason] a2rr on a2rr.[ID] = a2.[DeviationReasonID]
	left join [dbo].[ReworkReason] rrr on rrr.[ID] = a2.[RejectReasonID]
	left join [dbo].[ReworkReason] rrc on rrc.[ID] = a2.[CancelReasonID]
	-- Disbursement
	left join [dbo].[Disbursement] ds WITH (NOLOCK) on ds.[ApplicationNo] = ml.[ApplicationNo]
	-- Property Info
	left join [dbo].[PIMLApplication] pl WITH (NOLOCK) on pl.[ID] = ml.[PropertyInfoID1]
	left join [dbo].[PropertyType] aprt on aprt.[ID] = pl.[PropertyTypeID]
	left join [dbo].[PropertyStat] aprs on aprs.[ID] = pl.[PropertyStatusID]
	-- FINAL PropertyInfo
	left join [dbo].[PIMLApplication] fpl WITH (NOLOCK) on fpl.[ID] = ml.[FinalProperty1]
	left join [dbo].[PropertyType] fprt on fprt.[ID] = fpl.[PropertyTypeID]
	left join [dbo].[PropertyStat] fprs on fprs.[ID] = fpl.[PropertyStatusID]
	-- FINAL Collateral
	left join [dbo].[PIMLApplication] fcol WITH (NOLOCK) on fcol.[ID] = ml.[FinalCollateral1]
	left join [dbo].[PropertyType] fcolp1 on fcolp1.[ID] = fcol.[PropertyTypeID]
	left join [dbo].[PropertyStat] fcols1 on fcols1.[ID] = fcol.[PropertyStatusID]
	--
	left join dbo.CICMLApplication ci1 on c1.[ID] = ml.[CICMLApplicationID1]
	left join dbo.CICMLApplication ci2 on c2.[ID] = ml.[CICMLApplicationID2]
	left join dbo.CICMLApplication ci3 on c3.[ID] = ml.[CICMLApplicationID3]
	--
	left join dbo.ApprovalMLDisbursementCondition a1pre WITH (NOLOCK) on a1pre.[ID] = a.[PreDisbursementID]
	left join dbo.ApprovalMLDisbursementCondition a1dis WITH (NOLOCK) on a1dis.[ID] = a.[DisbursementID]
	left join dbo.ApprovalMLDisbursementCondition a1pos WITH (NOLOCK) on a1pos.[ID] = a.[PostDisbursementID]
	--
	left join dbo.ApprovalMLDisbursementCondition a2pre WITH (NOLOCK) on a2pre.[ID] = a2.[PreDisbursementID]
	left join dbo.ApprovalMLDisbursementCondition a2dis WITH (NOLOCK) on a2dis.[ID] = a2.[DisbursementID]
	left join dbo.ApprovalMLDisbursementCondition a2pos WITH (NOLOCK) on a2pos.[ID] = a2.[PostDisbursementID]
	--
	left join [dbo].[LoginUser] u1 on u1.[PeoplewiseID] = ml.[CI1]
	left join [dbo].[LoginUser] u2 on u2.[PeoplewiseID] = ml.[CI2]
	left join [dbo].[tblStatusName] stt on stt.[ID] = ml.[Status]
	where 
	([dbo]._fGetShortDate(ml.[ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
	[dbo]._fGetShortDate(ml.[ReceivedDate]) <= [dbo]._fGetShortDate(@tDate))
	and left(ml.[ApplicationNo],2) = 'AL'
	order by ml.[ReceivedDate]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_retso_report_al]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_retso_report_al] 
	@status1 varchar(50),
	@status2 varchar(50),
	@status3 varchar(50),
	@status4 varchar(50),
	@fDate datetime,
	@tDate datetime
AS
BEGIN

select [ApplicationNo] from [MLApplication] 
where ([ApplicationNo] in
(
	select [ApplicationNo] from [dbo].[AppActionLog]
	where [ApplicationNo] like 'ML%' and 
			[Action] in (@status1,@status2,@status3,@status4)
	group by [ApplicationNo]
)
and [dbo].[_fgetshortdate]([ReceivedDate]) between [dbo].[_fgetshortdate](@fdate) and [dbo].[_fgetshortdate](@tdate))
order by [ReceivedDate] desc

END


GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_rework_list]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_rework_list] 
	@fDate datetime, 
	@tDate datetime,
	@iSaleManager int
AS
BEGIN

select 
	ROW_NUMBER() OVER (order by m.[ReceivedDate]) as Seq,
	m.[ApplicationNo] as App_No, 
	REPLACE(CONVERT(VARCHAR(11), m.[ReceivedDate], 106), ' ', '/') as ReceivedDate, 	
	c.[FullName] as Customer_Name,
	(case @iSaleManager when 1 then '' else c.[PassportID] end) as CustomerID,
	REPLACE(CONVERT(VARCHAR(11), c.[DOB], 106), ' ', '/') as DOB,
	(select count(*) from dbo.AppActionLog aal where aal.[ApplicationNo]=m.[ApplicationNo] and aal.[Action]='CISendBack') as Times_SentBack_By_CI,
	(select count(*) from dbo.AppActionLog aal where aal.[ApplicationNo]=m.[ApplicationNo] and aal.[Action]='OSSendBack') as Times_SentBack_By_OS,
	l.[SentBackDate],
	l.[UserType],
	rr.[Name] as [ReworkReason],
	l.[Remark],
	l.[ReceivedDate]
from dbo.MLApplication m WITH (NOLOCK)
	left join dbo.Customer c WITH (NOLOCK) on c.[ID] = m.[MainBorrowerID]
	left join dbo.ReworkLog l on l.[ApplicationNo] = m.[ApplicationNo]
	left join dbo.ReworkReason rr on rr.[ID] = l.[ReworkReasonID]
where 
	[dbo]._fGetShortDate(m.[ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
	[dbo]._fGetShortDate(m.[ReceivedDate]) <= [dbo]._fGetShortDate(@tDate)
order by m.[ReceivedDate]	

END



GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_sale_direct]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_sale_direct] 
	@fDate datetime,
	@tDate datetime,
	@saleId varchar(7)
AS
BEGIN

	select 
		m.ApplicationNo,
		m.AmountRequest as LoanAmountApplied,
		m.Tenor,
		m.LoanPurposeCode,
		m.Remarks,
		stat.[StatusName] as CurrentStatus,
		m.ProgramCode,
		(case m.ExpectedLoan when 1 then 'Yes' else 'No' end) as ExpressLoan,
		c.[FullName],
		c.[PassportID],
		c.[DOB],
		c.[CurrentPosition] as JobTitle,
		c.[CompanyName],
		(ISNULL(c.ResidentialAddress,'') + '-' + ISNULL(c.Ward,'') + '-' + ISNULL(c.District,'') + '-' + ISNULL(c.City,'')) as CustomerAddress,
		s.[Name] as Channel,
		ct.[Name] as BranchLocation,
		pt.[Name] as PaymentMethod,
		prt.[Name] as Programs,
		pro.[Name] as ProductType,
		(ISNULL(cic1.TotalIncome, 0) + ISNULL(cic2.TotalIncome, 0) + ISNULL(cic3.TotalIncome, 0)) as TotalIncome,
		a1.Status as DecisionStatusAIP,
		a1.LoanAmount as AmountApprovedAIP,
		a1.DecisionDate as DecisionDateAIP,
		a2.Status as FinalDecisionStatus,
		a2.LoanAmount as FinalAmountApproved,
		a2.DecisionDate as FinalDecisionDate,
		a2.[Level] as FinalLevel,
		a2.Tenor as FinalTenor,
		a2.CommercialInterest as FinalInterest,
		(case a2.MRTA when 1 then 'Yes' else 'No' end) as MRTA,
		(case a2.IncludeInsuranceLoan when 1 then 'Yes' else 'No' end) as MRTAPaymentOption,
		a2.MRTAApplicationNumber,
		a2.MRTALifeAssured,
		a2.MRTAAppliedPremium,
		a2.MRTAAppliedSumAssured,
		a2.MRTAAmount,
		a2.LoanAmtMRTA as AmountApprovedWithMRTA,
		a2.TotalEMIMRTA,
		d.DisbursalStatus,
		d.DisbursedDate,
		d.LoanAccountNo,
		(case rj.[Name] when null then cl.[Name] else rj.[Name] end) ReasonName,
		cs.[Name] as CustomerSegment,
		p1.[Name] as PropertyType1,
		p2.[Name] as PropertyType2,
		p3.[Name] as PropertyType3,
		p4.[Name] as PropertyType4,
		p5.[Name] as PropertyType5,
		s1.[Name] as PropertyStatus1,
		s2.[Name] as PropertyStatus2,
		s3.[Name] as PropertyStatus3,
		s4.[Name] as PropertyStatus4,
		s5.[Name] as PropertyStatus5,
		c1.[Name] as CollateralType1,
		c2.[Name] as CollateralType2,
		c3.[Name] as CollateralType3,
		s6.[Name] as CollateralStatus1,
		s7.[Name] as CollateralStatus2,
		s8.[Name] as CollateralStatus3,
		(case cic1.[Over40TotalIncome] when 1 then 'YES' else 'NO' end) OverIncomeMB,
		(case cic2.[Over40TotalIncome] when 1 then 'YES' else 'NO' end) OverIncomeCB1,
		(CAST(predis.Condition1 as nvarchar(2000)) + '\r\n' + CAST(predis.Condition2 as nvarchar(2000)) + '\r\n' +
		CAST(predis.Condition3 as nvarchar(2000)) + '\r\n' + CAST(predis.Condition4 as nvarchar(2000)) + '\r\n' +
		CAST(predis.Condition5 as nvarchar(2000)) + '\r\n' + CAST(predis.Condition6 as nvarchar(2000)) + '\r\n' +
		CAST(predis.Condition7 as nvarchar(2000)) + '\r\n' + CAST(predis.Condition8 as nvarchar(2000)) + '\r\n' +
		CAST(predis.Condition9 as nvarchar(2000)) + '\r\n' + CAST(predis.Condition10 as nvarchar(2000)) + '\r\n' +
		CAST(predis.Condition11 as nvarchar(2000)) + '\r\n' + CAST(predis.Condition12 as nvarchar(2000)) + '\r\n') as PreDisbursementCondition,
		(CAST(postdis.Condition1 as nvarchar(2000)) + '\r\n' + CAST(postdis.Condition2 as nvarchar(2000)) + '\r\n' +
		CAST(postdis.Condition3 as nvarchar(2000)) + '\r\n' + CAST(postdis.Condition4 as nvarchar(2000)) + '\r\n' +
		CAST(postdis.Condition5 as nvarchar(2000)) + '\r\n' + CAST(postdis.Condition6 as nvarchar(2000)) + '\r\n' +
		CAST(postdis.Condition7 as nvarchar(2000)) + '\r\n' + CAST(postdis.Condition8 as nvarchar(2000)) + '\r\n' +
		CAST(postdis.Condition9 as nvarchar(2000)) + '\r\n' + CAST(postdis.Condition10 as nvarchar(2000)) + '\r\n' +
		CAST(postdis.Condition11 as nvarchar(2000)) + '\r\n' + CAST(postdis.Condition12 as nvarchar(2000)) + '\r\n') as PostDisbursementCondition,
		(CAST(dis.Condition1 as nvarchar(2000)) + '\r\n' + CAST(dis.Condition2 as nvarchar(2000)) + '\r\n' +
		CAST(dis.Condition3 as nvarchar(2000)) + '\r\n' + CAST(dis.Condition4 as nvarchar(2000)) + '\r\n' +
		CAST(dis.Condition5 as nvarchar(2000)) + '\r\n' + CAST(dis.Condition6 as nvarchar(2000)) + '\r\n' +
		CAST(dis.Condition7 as nvarchar(2000)) + '\r\n' + CAST(dis.Condition8 as nvarchar(2000)) + '\r\n' +
		CAST(dis.Condition9 as nvarchar(2000)) + '\r\n' + CAST(dis.Condition10 as nvarchar(2000)) + '\r\n' +
		CAST(dis.Condition11 as nvarchar(2000)) + '\r\n' + CAST(dis.Condition12 as nvarchar(2000)) + '\r\n') as DisbursementCondition
	from dbo.MLApplication m
	left join dbo.tblStatusName stat on stat.[ID] = m.[Status]

	left join dbo.Customer c on c.[ID] = m.[MainBorrowerID]
	left join dbo.CustomerIncome cin1 on cin1.[ID] = c.[IncomeSalariedID]
	left join dbo.CustomerIncome cin2 on cin2.[ID] = c.[IncomeHouseRentalID]
	left join dbo.CustomerIncome cin3 on cin3.[ID] = c.[IncomeCarRentalID]
	left join dbo.CustomerIncome cin4 on cin4.[ID] = c.[IncomePrivateID]

	left join dbo.SalesChannel s on s.[ID] = m.[ChannelID]
	left join dbo.CustomerType ct on ct.[ID] = m.[CustomerTypeID]
	left join dbo.PaymentType pt on pt.[ID] = m.[PaymentTypeID]
	left join dbo.ProgramType prt on prt.[ID] = m.[ProgramTypeID]
	left join dbo.ProductType pro on pro.[ID] = m.[ProductTypeID]
	left join dbo.CICMLApplication cic1 on cic1.[ID] = m.[CICMLApplicationID1]
	left join dbo.CICMLApplication cic2 on cic2.[ID] = m.[CICMLApplicationID2]
	left join dbo.CICMLApplication cic3 on cic3.[ID] = m.[CICMLApplicationID3]
	left join dbo.ApprovalMLApplication a1 on a1.[ID] = m.[ApprovalID1]
	left join dbo.ApprovalMLApplication a2 on a2.[ID] = m.[ApprovalID2]
	left join dbo.ApprovalMLDisbursementCondition predis on predis.[ID] = a2.[PreDisbursementID] 
	left join dbo.ApprovalMLDisbursementCondition postdis on postdis.[ID] = a2.[PostDisbursementID]
	left join dbo.ApprovalMLDisbursementCondition dis on dis.[ID] = a2.[DisbursementID]		
	left join dbo.ReworkReason rj on rj.[ID] = a2.[RejectReasonID]
	left join dbo.ReworkReason cl on cl.[ID] = a2.[CancelReasonID]
	left join dbo.Disbursement d on d.[ApplicationNo] = m.[ApplicationNo]
	left join dbo.CustomerSegment cs on cs.[ID] = m.[CustomerSegmentID]
	
	left join dbo.PIMLApplication pi1 on pi1.[ID] = m.[FinalProperty1]
	left join dbo.PropertyType p1 on p1.[ID] = pi1.[PropertyTypeID]
	left join dbo.PropertyStat s1 on s1.[ID] = pi1.[PropertyStatusID]
	
	left join dbo.PIMLApplication pi2 on pi2.[ID] = m.[FinalProperty2]
	left join dbo.PropertyType p2 on p2.[ID] = pi2.[PropertyTypeID]
	left join dbo.PropertyStat s2 on s2.[ID] = pi2.[PropertyStatusID]
	
	left join dbo.PIMLApplication pi3 on pi3.[ID] = m.[FinalProperty3]
	left join dbo.PropertyType p3 on p3.[ID] = pi3.[PropertyTypeID]
	left join dbo.PropertyStat s3 on s3.[ID] = pi3.[PropertyStatusID]

	left join dbo.PIMLApplication pi4 on pi4.[ID] = m.[FinalProperty4]
	left join dbo.PropertyType p4 on p4.[ID] = pi4.[PropertyTypeID]
	left join dbo.PropertyStat s4 on s4.[ID] = pi4.[PropertyStatusID]
	
	left join dbo.PIMLApplication pi5 on pi5.[ID] = m.[FinalProperty5]
	left join dbo.PropertyType p5 on p5.[ID] = pi5.[PropertyTypeID]
	left join dbo.PropertyStat s5 on s5.[ID] = pi5.[PropertyStatusID]

	left join dbo.PIMLApplication cl1 on cl1.[ID] = m.[FinalCollateral1]
	left join dbo.PropertyType c1 on c1.[ID] = cl1.[PropertyTypeID]
	left join dbo.PropertyStat s6 on s6.[ID] = cl1.[PropertyStatusID]
	
	left join dbo.PIMLApplication cl2 on cl2.[ID] = m.[FinalCollateral2]
	left join dbo.PropertyType c2 on c2.[ID] = cl2.[PropertyTypeID]
	left join dbo.PropertyStat s7 on s7.[ID] = cl2.[PropertyStatusID]

	left join dbo.PIMLApplication cl3 on cl3.[ID] = m.[FinalCollateral3]
	left join dbo.PropertyType c3 on c3.[ID] = cl3.[PropertyTypeID]
	left join dbo.PropertyStat s8 on s8.[ID] = cl3.[PropertyStatusID]
	where (m.[PIDOfSaleStaff] = @saleId  OR m.SalesTeamManagerPWID = @saleId) AND 
			([dbo]._fGetShortDate(m.[ReceivedDate]) between [dbo]._fGetShortDate(@fDate) and 
			[dbo]._fGetShortDate(@tDate))
	order by m.[ReceivedDate] desc

END




GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_sale_master]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_sale_master] 
	@fDate datetime,
	@tDate datetime,
	@iSaleManager int,
	@limitedIncome int
AS
BEGIN

select 
	ROW_NUMBER() over (order by ml.[ReceivedDate]) as Seq, 
	ml.[ApplicationNo] as App_No, 
	REPLACE(CONVERT(VARCHAR(11), ml.[ReceivedDate], 106), ' ', '/') as Received_Date,
	c.[FullName] as CustomerName,
	(case @iSaleManager when 1 then '' else c.[PassportID] end) as CustomerID,		
	REPLACE(CONVERT(VARCHAR(11), c.[DOB], 106), ' ', '/') as DOB,
	c.[CurrentPosition] as JobTitle,
	c.[CompanyName],
	(case c.[Status] when 1 then 'Yes' else 'No' end) as BlackList_Check,
	REPLACE(CONVERT(varchar, CAST(ml.[AmountRequest] as money), 1), '.00', '') as Loan_Amt_Applied,
	ml.[Tenor],
	ml.[LoanPurposeCode] as Loan_Purpose,
	sc.[Name] as Channel,
	ct.[Name] as Branch_Location,
	ml.[ARMCode],
	pt.[Name] as Payment_Method,
	prt.[Name] as Programs,
	pdt.[Name] as ProductType,
	-- TotalIncome
	REPLACE(CONVERT(varchar, CAST((case when c1.[TotalIncome] >= @limitedIncome then (ISNULL(c1.[TotalIncome],0) + ISNULL(c2.[TotalIncome],0) + ISNULL(c3.[TotalIncome],0)) else (0 + ISNULL(c2.[TotalIncome],0) + ISNULL(c3.[TotalIncome],0)) end) as money), 1), '.00', '') as TotalIncome,
	a1.[Status] as DECISION_STATUS_AIP,
	REPLACE(CONVERT(varchar, CAST(a1.[LoanAmount] as money), 1), '.00', '') as Loan_Amt_Approved_AIP,
	REPLACE(CONVERT(VARCHAR(11), a1.[DecisionDate], 106), ' ', '/') as Final_DecisionDate_AIP,
	REPLACE(CONVERT(VARCHAR(11), a2.[DecisionDate], 106), ' ', '/') as Final_DecisionDate,	 
	a2.[Status] as DECISION_STATUS,
	a2.[Level] as 'Level',
	(case rr.[Name] when NULL then rc.[Name] else rr.[Name] end) as 'Rejected or Cancelled Reasons',
	ml.[Remarks],
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmount] as money), 1), '.00', '') as Loan_Amt_Approved,
	a2.[Tenor] as 'Tenor (month)',
	(CONVERT(varchar, CAST(a2.[CommercialInterest] as money), 1) + '%') as Interest,		 
	dis.[DisbursalStatus],
	REPLACE(CONVERT(VARCHAR(11), dis.[DisbursedDate], 106), ' ', '/') as Disbursed_Date,
	dis.[LoanAccountNo],
	stt.[StatusName] as CurrentStatus,
	ml.[ProgramCode],
	(case ml.[ExpectedLoan] when 1 then 'Yes' else 'No' end) as ExpressLoan,
	(case ml.[OSSentBack] when 1 then 'Yes' else 'No' end) as Pending_OSSendback,
	(case ml.[CISentBack] when 1 then 'Yes' else 'No' end) as Pending_CISendback,
	ml.[SalesCode],
	(case @iSaleManager when 1 then '' else c.[MobileNo] end) as Customer_MobilePhone,
	(case @iSaleManager when 1 then '' else ((ISNULL(c.ResidentialAddress,'') + '-' + ISNULL(c.Ward,'') + '-' + ISNULL(c.District,'') + '-' + ISNULL(c.City,''))) end) as Customer_Address,
	REPLACE(CONVERT(VARCHAR(11), ml.[ExpectingDisbursedDate], 106), ' ', '/') as Expecting_DisbursedDate		
from [dbo].[MLApplication] ml WITH (NOLOCK)
left join dbo.Customer c WITH (NOLOCK) on c.[ID] = ml.[MainBorrowerID]
left join dbo.SalesChannel sc on sc.[ID] = ml.[ChannelID]
left join dbo.CustomerType ct on ct.[ID] = ml.[CustomerTypeID]
left join dbo.PaymentType pt on pt.[ID] = ml.[PaymentTypeID]
left join dbo.ProgramType prt on prt.[ID] = ml.[ProgramTypeID]
left join dbo.ProductType pdt on pdt.[ID] = ml.[ProductTypeID]
left join dbo.CICMLApplication c1 WITH (NOLOCK) on c1.[ID] = ml.[CICMLApplicationID1]
left join dbo.CICMLApplication c2 WITH (NOLOCK) on c2.[ID] = ml.[CICMLApplicationID2]
left join dbo.CICMLApplication c3 WITH (NOLOCK) on c3.[ID] = ml.[CICMLApplicationID3]
left join dbo.ApprovalMLApplication a1 WITH (NOLOCK) on a1.[ID] = ml.[ApprovalID1]
left join dbo.ApprovalMLApplication a2 WITH (NOLOCK) on a2.[ID] = ml.[ApprovalID2]
left join dbo.ReworkReason rr on rr.[ID] = a2.[RejectReasonID]
left join dbo.ReworkReason rc on rc.[ID] = a2.[CancelReasonID]
left join dbo.Disbursement dis WITH (NOLOCK) on dis.[ApplicationNo] = ml.[ApplicationNo]
left join dbo.tblStatusName stt on stt.[ID] = ml.[Status]
where 
[dbo]._fGetShortDate([ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
[dbo]._fGetShortDate([ReceivedDate]) <= [dbo]._fGetShortDate(@tDate)
order by ml.[ReceivedDate]

END




GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_sale_pending]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_sale_pending] 
	@fDate datetime,
	@tDate datetime,	
	@limitedIncome int
AS
BEGIN

DECLARE @NewLineChar AS CHAR(2) SET @NewLineChar = CHAR(13) + CHAR(10)

select 
	ROW_NUMBER() over (order by ml.[ReceivedDate]) as Seq, 
	ml.[ApplicationNo], 
	(SELECT TOP 1 [ActionBy] FROM [AppActionLog] WHERE ApplicationNo = ml.ApplicationNo ORDER BY ActionDate) AS CreatedBy,
	REPLACE(CONVERT(VARCHAR(11), ml.[ReceivedDate], 106), ' ', '/') as ReceivedDate,
	c.[FullName],
	c.[PassportID],
	REPLACE(CONVERT(VARCHAR(11), c.[DOB], 106), ' ', '/') as DOB,
	c.[CurrentPosition],
	c.[CompanyName],
	(case c.[Status] when 1 then 'Yes' else 'No' end) as BlackListCheck,
	REPLACE(CONVERT(varchar, CAST(ml.[AmountRequest] as money), 1), '.00', '') as LoanAmtApplied,
	ml.[Tenor],
	ml.[LoanPurposeCode] as LoanPurpose,
	sc.[Name] as Channel,
	ct.[Name] as BranchLocation,
	ml.[ARMCode],
	pt.[Name] as PaymentMethod,
	prt.[Name] as Programs,
	pdt.[Name] as ProductType,
	-- TotalIncome
	REPLACE(CONVERT(varchar, CAST((case when c1.[TotalIncome] >= @limitedIncome then (ISNULL(c1.[TotalIncome],0) + ISNULL(c2.[TotalIncome],0) + ISNULL(c3.[TotalIncome],0)) else (0 + ISNULL(c2.[TotalIncome],0) + ISNULL(c3.[TotalIncome],0)) end) as money), 1), '.00', '') as TotalIncome,
	a1.[Status] as DecisionStatusAIP,
	REPLACE(CONVERT(varchar, CAST(a1.[LoanAmount] as money), 1), '.00', '') as LoanAmtApprovedAIP,
	REPLACE(CONVERT(VARCHAR(11), a1.[DecisionDate], 106), ' ', '/') as FinalDecisionDateAIP,
	REPLACE(CONVERT(VARCHAR(11), a2.[DecisionDate], 106), ' ', '/') as FinalDecisionDate,
	a2.[Status] as DecisionStatus,
	a2.[Level] as FinalLevel,
	(case rr.[Name] when NULL then rc.[Name] else rr.[Name] end) as RejectCancelReason,
	ml.[Remarks],
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmount] as money), 1), '.00', '') as LoanAmtApproved,
	a2.[Tenor] as FinalTenor,
	(CONVERT(varchar, CAST(a2.[CommercialInterest] as money), 1) + '%') as Interest,		 
	dis.[DisbursalStatus],
	REPLACE(CONVERT(VARCHAR(11), dis.[DisbursedDate], 106), ' ', '/') as DisbursedDate,
	dis.[LoanAccountNo],
	stt.[StatusName] as CurrentStatus,
	ml.[ProgramCode],
	(case ml.[ExpectedLoan] when 1 then 'Yes' else 'No' end) as ExpressLoan,
	(case ml.[OSSentBack] when 1 then 'Yes' else 'No' end) as PendingOSSendback,
	(case ml.[CISentBack] when 1 then 'Yes' else 'No' end) as PendingCISendback,
	(select count(*) from dbo.AppActionLog al where al.[ApplicationNo] = ml.[ApplicationNo] and al.[Action] = 'CISendBack') as TimesSendbackCI,
	(select count(*) from dbo.AppActionLog al where al.[ApplicationNo] = ml.[ApplicationNo] and al.[Action] = 'OSSendBack') as TimesSendbackOS,
	cs.[Name] as CustomerSegment,
	pte1.[Name] as PropertyType_Purchased1,
	pte2.[Name] as PropertyType_Purchased2,
	pte3.[Name] as PropertyType_Purchased3,
	pte4.[Name] as PropertyType_Purchased4,
	pte5.[Name] as PropertyType_Purchased5,
	pst1.[Name] as PropertyStatus_Purchased1,
	pst2.[Name] as PropertyStatus_Purchased2,
	pst3.[Name] as PropertyStatus_Purchased3,
	pst4.[Name] as PropertyStatus_Purchased4,
	pst5.[Name] as PropertyStatus_Purchased5,
	ptecl1.[Name] as PropertyType_Collateral1,
	ptecl2.[Name] as PropertyType_Collateral2,
	ptecl3.[Name] as PropertyType_Collateral3,
	pstcl1.[Name] as PropertyStatus_Collateral1,
	pstcl2.[Name] as PropertyStatus_Collateral2,
	pstcl3.[Name] as PropertyStatus_Collateral3,
	(case c1.[Over40TotalIncome] when 1 then 'YES' else 'NO' end) as CollateralOver40MB,
	(case c2.[Over40TotalIncome] when 1 then 'YES' else 'NO' end) as CollateralOver40CB1,
	ml.[SalesCode],
	c.[MobileNo] as Customer_MobilePhone,
	(ISNULL(c.ResidentialAddress,'') + '-' + ISNULL(c.Ward,'') + '-' + ISNULL(c.District,'') + '-' + ISNULL(c.City,'')) as Customer_Address,
	c.MainAddress as MailingAddress,
	(CONVERT(nvarchar(4000),a2pre.[Condition1]) + @NewLineChar + CONVERT(nvarchar(4000),a2pre.[Condition2]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2pre.[Condition3]) + @NewLineChar + CONVERT(nvarchar(4000),a2pre.[Condition4]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2pre.[Condition5]) + @NewLineChar + CONVERt(nvarchar(4000),a2pre.[Condition6]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2pre.[Condition7]) + @NewLineChar + CONVERT(nvarchar(4000),a2pre.[Condition8]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2pre.[Condition9]) + @NewLineChar + CONVERT(nvarchar(4000),a2pre.[Condition10]) + @NewLineChar +
	 CONVERT(nvarchar(4000),a2pre.[Condition11]) + @NewLineChar + CONVERT(nvarchar(4000),a2pre.[Condition12])) as Pre_Disbursement,
	(CONVERT(nvarchar(4000),a2dis.[Condition1]) + @NewLineChar + CONVERT(nvarchar(4000),a2dis.[Condition2]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2dis.[Condition3]) + @NewLineChar + CONVERT(nvarchar(4000),a2dis.[Condition4]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2dis.[Condition5]) + @NewLineChar + CONVERt(nvarchar(4000),a2dis.[Condition6]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2dis.[Condition7]) + @NewLineChar + CONVERT(nvarchar(4000),a2dis.[Condition8]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2dis.[Condition9]) + @NewLineChar + CONVERT(nvarchar(4000),a2dis.[Condition10]) + @NewLineChar +
	 CONVERT(nvarchar(4000),a2dis.[Condition11]) + @NewLineChar + CONVERT(nvarchar(4000),a2dis.[Condition12])) as Disbursement,
	(CONVERT(nvarchar(4000),a2pos.[Condition1]) + @NewLineChar + CONVERT(nvarchar(4000),a2pos.[Condition2]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2pos.[Condition3]) + @NewLineChar + CONVERT(nvarchar(4000),a2pos.[Condition4]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2pos.[Condition5]) + @NewLineChar + CONVERt(nvarchar(4000),a2pos.[Condition6]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2pos.[Condition7]) + @NewLineChar + CONVERT(nvarchar(4000),a2pos.[Condition8]) + @NewLineChar + 
	 CONVERT(nvarchar(4000),a2pos.[Condition9]) + @NewLineChar + CONVERT(nvarchar(4000),a2pos.[Condition10]) + @NewLineChar +
	 CONVERT(nvarchar(4000),a2pos.[Condition11]) + @NewLineChar + CONVERT(nvarchar(4000),a2pos.[Condition12])) as Post_Disbursement,
	(case a2.[MRTA] when 1 then 'Yes' else 'No' end) as MRTA,
	(case a2.[IncludeInsuranceLoan] when 1 then 'Finance' else 'Non-Finance' end) as MRTA_PaymentOption,
	a2.[MRTAApplicationNumber],
	a2.[MRTALifeAssured] as MRTA_LifeAssured,
	REPLACE(CONVERT(varchar, CAST(a2.[MRTAAppliedPremium] as money), 1), '.00', '') as MRTA_AppliedPremium,
	REPLACE(CONVERT(varchar, CAST(a2.[MRTAAppliedSumAssured] as money), 1), '.00', '') as MRTA_AppliedSumAsured,
	REPLACE(CONVERT(varchar, CAST(a2.[MRTAAmount] as money), 1), '.00', '') as MRTA_Amount,
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmtMRTA] as money), 1), '.00', '') as LoanAmtApprovedWMRTA,
	REPLACE(CONVERT(varchar, CAST(a2.[TotalEMIMRTA] as money), 1), '.00', '') as TotalEMI_WithMRTA,
	(case (select count(*) from dbo.AppActionlog aal where aal.ApplicationNo = ml.ApplicationNo and aal.[Action]='LOApproveRemodifySC') when 0 then 'NO' else 'YES' end) as LO_ReModified_SC,
	c.[RLSCompanyCode] as RLSCompanyCode_MB,
	cb1.[RLSCompanyCode] as RLSCompanyCode_CB1,
	cb2.[RLSCompanyCode] as RLSCompanyCode_CB2,
	cb3.[RLSCompanyCode] as RLSCompanyCode_CB3,
	bt.[Name] as NewToBank,
	tvf.[Remarks] as RemarkTeleVerifier,
	c.EmailAddress1,
	c.EmailAddress2,
	c.EmailAddress3,
	c.NationalityCode,
	ml.EOpsTxnRefNo,
	REPLACE(CONVERT(VARCHAR(11), ml.[HardCopyAppDate], 106), ' ', '/') as HardCopyAppDate
from [dbo].[MLApplication] ml WITH (NOLOCK)
left join dbo.Customer c WITH (NOLOCK) on c.[ID] = ml.[MainBorrowerID]
left join dbo.BankType bt on bt.[ID] = c.[CustomerTypeBank]
left join dbo.TeleVerifierForm tvf on tvf.[CustomerID] = c.[ID]
left join dbo.Customer cb1 WITH (NOLOCK) on cb1.[ID] = ml.[CoBorrower1]	
left join dbo.Customer cb2 WITH (NOLOCK) on cb2.[ID] = ml.[CoBorrower2]	
left join dbo.Customer cb3 WITH (NOLOCK) on cb3.[ID] = ml.[CoBorrower3]	

left join dbo.SalesChannel sc on sc.[ID] = ml.[ChannelID]
left join dbo.CustomerType ct on ct.[ID] = ml.[CustomerTypeID]
left join dbo.PaymentType pt on pt.[ID] = ml.[PaymentTypeID]
left join dbo.ProgramType prt on prt.[ID] = ml.[ProgramTypeID]
left join dbo.ProductType pdt on pdt.[ID] = ml.[ProductType]
left join dbo.CICMLApplication c1 on c1.[ID] = ml.[CICMLApplicationID1]
left join dbo.CICMLApplication c2 on c2.[ID] = ml.[CICMLApplicationID2]
left join dbo.CICMLApplication c3 on c3.[ID] = ml.[CICMLApplicationID3]
left join dbo.ApprovalMLApplication a1 WITH (NOLOCK) on a1.[ID] = ml.[ApprovalID1]
left join dbo.ApprovalMLApplication a2 WITH (NOLOCK) on a2.[ID] = ml.[ApprovalID2]
left join dbo.ApprovalMLDisbursementCondition a2pre WITH (NOLOCK) on a2pre.[ID] = a2.[PreDisbursementID]
left join dbo.ApprovalMLDisbursementCondition a2dis WITH (NOLOCK) on a2dis.[ID] = a2.[DisbursementID]
left join dbo.ApprovalMLDisbursementCondition a2pos WITH (NOLOCK) on a2pos.[ID] = a2.[PostDisbursementID]

left join dbo.ReworkReason rr on rr.[ID] = a2.[RejectReasonID]
left join dbo.ReworkReason rc on rc.[ID] = a2.[CancelReasonID]
left join dbo.Disbursement dis on dis.[ApplicationNo] = ml.[ApplicationNo]
left join dbo.tblStatusName stt on stt.[ID] = ml.[Status]
left join dbo.CustomerSegment cs on cs.[ID] = ml.[CustomerSegmentID]

left join dbo.PIMLApplication pi1 WITH (NOLOCK) on pi1.[ID] = ml.[FinalProperty1]
left join dbo.PropertyType pte1 on pte1.[ID] = pi1.[PropertyTypeID]
left join dbo.PropertyStat pst1 on pst1.[ID] = pi1.[PropertyStatusID]

left join dbo.PIMLApplication pi2 WITH (NOLOCK) on pi2.[ID] = ml.[FinalProperty2]
left join dbo.PropertyType pte2 on pte2.[ID] = pi2.[PropertyTypeID]
left join dbo.PropertyStat pst2 on pst2.[ID] = pi2.[PropertyStatusID]

left join dbo.PIMLApplication pi3 WITH (NOLOCK) on pi3.[ID] = ml.[FinalProperty3]
left join dbo.PropertyType pte3 on pte3.[ID] = pi3.[PropertyTypeID]
left join dbo.PropertyStat pst3 on pst3.[ID] = pi3.[PropertyStatusID]

left join dbo.PIMLApplication pi4 WITH (NOLOCK) on pi4.[ID] = ml.[FinalProperty4]
left join dbo.PropertyType pte4 on pte4.[ID] = pi4.[PropertyTypeID]
left join dbo.PropertyStat pst4 on pst4.[ID] = pi4.[PropertyStatusID]

left join dbo.PIMLApplication pi5 WITH (NOLOCK) on pi5.[ID] = ml.[FinalProperty5]
left join dbo.PropertyType pte5 on pte5.[ID] = pi5.[PropertyTypeID]
left join dbo.PropertyStat pst5 on pst5.[ID] = pi5.[PropertyStatusID]

left join dbo.PIMLApplication cl1 WITH (NOLOCK) on cl1.[ID] = ml.[FinalCollateral1]
left join dbo.PropertyType ptecl1 on ptecl1.[ID] = cl1.[PropertyTypeID]
left join dbo.PropertyStat pstcl1 on pstcl1.[ID] = cl1.[PropertyStatusID]

left join dbo.PIMLApplication cl2 WITH (NOLOCK) on cl2.[ID] = ml.[FinalCollateral2]
left join dbo.PropertyType ptecl2 on ptecl2.[ID] = cl2.[PropertyTypeID]
left join dbo.PropertyStat pstcl2 on pstcl2.[ID] = cl2.[PropertyStatusID]

left join dbo.PIMLApplication cl3 WITH (NOLOCK) on cl3.[ID] = ml.[FinalCollateral3]
left join dbo.PropertyType ptecl3 on ptecl3.[ID] = cl3.[PropertyTypeID]
left join dbo.PropertyStat pstcl3 on pstcl3.[ID] = cl3.[PropertyStatusID]
where 
[dbo]._fGetShortDate([ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
[dbo]._fGetShortDate([ReceivedDate]) <= [dbo]._fGetShortDate(@tDate)
order by ml.[ReceivedDate]

END




GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_status]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_status] 
	@fDate datetime,
	@tDate datetime,
	@limitedIncome int,
	@status1 int,
	@status2 int
AS
BEGIN

select 
	ROW_NUMBER() over (order by ml.[ReceivedDate]) as Seq,
	ml.[ApplicationNo] as App_No, 
	REPLACE(CONVERT(VARCHAR(11), ml.[ReceivedDate], 106), ' ', '/') as Received_Date,
	c.[FullName] as CustomerName,
	c.[PassportID] as CustomerID,
	REPLACE(CONVERT(VARCHAR(11), c.[DOB], 106), ' ', '/') as DOB,
	c.[PassportID] as NationalID,
	c.[CurrentPosition] as JobTitle,
	ccode.[Name] as CompanyCode,
	ccode.[CompanyType],
	tarea.[Name] as Business_TradingArea,
	REPLACE(CONVERT(VARCHAR(11), (DATEADD(month, -CONVERT(int,c.[TotalServiceYears]), getdate())), 106), ' ', '/') as JointDate,
	cic.[Name] as CIC,
	((ISNULL(c1.[Debt1Current],0) + ISNULL(c1.[Debt2Current],0) + ISNULL(c1.[Debt3Current],0) + ISNULL(c1.[Debt4Current],0) + ISNULL(c1.[DebtOtherCurrent],0)) + 
	 (ISNULL(c2.[Debt1Current],0) + ISNULL(c2.[Debt2Current],0) + ISNULL(c2.[Debt3Current],0) + ISNULL(c2.[Debt4Current],0) + ISNULL(c2.[DebtOtherCurrent],0)) + 
	 (ISNULL(c3.[Debt1Current],0) + ISNULL(c3.[Debt2Current],0) + ISNULL(c3.[Debt3Current],0) + ISNULL(c3.[Debt4Current],0) + ISNULL(c3.[DebtOtherCurrent],0)) + 
	 (ISNULL(c4.[Debt1Current],0) + ISNULL(c4.[Debt2Current],0) + ISNULL(c4.[Debt3Current],0) + ISNULL(c4.[Debt4Current],0) + ISNULL(c4.[DebtOtherCurrent],0))) as 'O/S_At_Other_Bank',
	((ISNULL(c1.[Debt1EMI],0) + ISNULL(c1.[Debt2EMI],0) + ISNULL(c1.[Debt3EMI],0) + ISNULL(c1.[Debt4EMI],0) + ISNULL(c1.[DebtOtherEMI],0)) + 
	 (ISNULL(c2.[Debt1EMI],0) + ISNULL(c2.[Debt2EMI],0) + ISNULL(c2.[Debt3EMI],0) + ISNULL(c2.[Debt4EMI],0) + ISNULL(c2.[DebtOtherEMI],0)) + 
	 (ISNULL(c3.[Debt1EMI],0) + ISNULL(c3.[Debt2EMI],0) + ISNULL(c3.[Debt3EMI],0) + ISNULL(c3.[Debt4EMI],0) + ISNULL(c3.[DebtOtherEMI],0)) + 
	 (ISNULL(c4.[Debt1EMI],0) + ISNULL(c4.[Debt2EMI],0) + ISNULL(c4.[Debt3EMI],0) + ISNULL(c4.[Debt4EMI],0) + ISNULL(c4.[DebtOtherEMI],0))) as EMI_At_Other_Bank,
	REPLACE(CONVERT(varchar, CAST(ml.[AmountRequest] as money), 1), '.00', '') as Loan_Amt_Applied,
	ml.[Tenor] as 'Tenor (month)',
	ml.[LoanPurposeCode] as Loan_Purpose,
	sc.[Name] as Channel,		
	ml.[ARMCode],
	pt.[Name] as PaymentMethod,
	prt.[Name] as Programs,
	pdt.[Name] as ProductType,	
	-- TotalIncome
	REPLACE(CONVERT(varchar, CAST((case when c1.[TotalIncome] >= @limitedIncome then (ISNULL(c1.[TotalIncome],0) + ISNULL(c2.[TotalIncome],0) + ISNULL(c3.[TotalIncome],0)) else (0 + ISNULL(c2.[TotalIncome],0) + ISNULL(c3.[TotalIncome],0)) end) as money), 1), '.00', '') as TotalIncome,
	REPLACE(CONVERT(varchar, CAST(cin.[TotalIncome] as money), 1), '.00', '') as Salary_Income,
	(ISNULL(ccar.[TotalIncome],0) + ISNULL(chouse.[TotalIncome],0) + ISNULL(cpri.[TotalIncome],0)) as 'Other Incomes (Non-salary)',
	(case (select count(*) from dbo.BlackCustomer bc where bc.[IDNumber] = c.[PassportID]) when 0 then 'No' else 'Yes' end) as BlackList_Check,
	u2.[FullName] as Underwriter,
	a1.[Status] as DECISION_STATUS_AIP,
	REPLACE(CONVERT(varchar, CAST(a1.[LoanAmount] as money), 1), '.00', '') as Loan_Amt_Approved_AIP,
	REPLACE(CONVERT(VARCHAR(11), a1.[DecisionDate], 106), ' ', '/') as Decision_Date,
	a1.[Level] as AIP_Level,
	REPLACE(CONVERT(VARCHAR(11), a2.[DecisionDate], 106), ' ', '/') as Final_DecisionDate,
	a2.[Status] as DECISION_STATUS,
	a2.[Level] as 'Level',
	(case rr.[Name] when NULL then rc.[Name] else rr.[Name] end) as 'Rejected or Cancelled Reasons',
	ml.[Remarks],
	REPLACE(CONVERT(varchar, CAST(a2.[LoanAmount] as money), 1), '.00', '') as Loan_Amt_Approved,
	a2.[Tenor] as 'Tenor (month)',
	(CONVERT(varchar, CAST(a2.[CommercialInterest] as money), 1) + '%') as Interest,		 
	REPLACE(CONVERT(varchar, CAST(a2.[TotalEMI] as money), 1), '.00', '') as TotalEMI,
	REPLACE(CONVERT(varchar, CAST(a2.[NormalDBR] as money), 1), '.00', '') + ' %' as NormalDBR,
	REPLACE(CONVERT(varchar, CAST(a2.[DBR] as money), 1), '.00', '') + ' %' as 'DBR 2% Added',
	REPLACE(CONVERT(varchar, CAST(a2.[TotalExposue] as money), 1), '.00', '') + ' %' as Total_Exposure,
	REPLACE(CONVERT(varchar, CAST(((NULLIF(a2.[TotalExposue],0) / NULLIF(a2.[TotalEMI],0))*100) as money), 1), '.00', '') + ' %' as TotalMUE,
	dis.[DisbursalStatus],
	REPLACE(CONVERT(VARCHAR(11), dis.[DisbursedDate], 106), ' ', '/') as Disbursed_Date,
	dis.[LoanAccountNo],
	ml.[ProgramCode],
	(case ml.[ExpectedLoan] when 1 then 'Yes' else 'No' end) as ExpressLoan,
	ml.[SalesCode],
	c.[MobileNo] as Customer_MobilePhone,
	((ISNULL(c.ResidentialAddress,'') + '-' + ISNULL(c.Ward,'') + '-' + ISNULL(c.District,'') + '-' + ISNULL(c.City,'')))as Customer_Address
from [dbo].[MLApplication] ml WITH (NOLOCK)
left join dbo.LoginUser u1 on u1.[PeoplewiseID] = ml.[CI1]
left join dbo.LoginUser u2 on u2.[PeoplewiseID] = ml.[CI2]
left join dbo.Customer c WITH (NOLOCK) on c.[ID] = ml.[MainBorrowerID]
left join dbo.CompanyCode ccode on ccode.[ID] = c.[CompanyCodeID]
left join dbo.CustomerIncome cin on cin.[ID] = c.[IncomeSalariedID]
left join dbo.CustomerIncome ccar on ccar.[ID] = c.[IncomeCarRentalID]
left join dbo.CustomerIncome chouse on chouse.[ID] = c.[IncomeHouseRentalID]
left join dbo.CustomerIncome cpri on cpri.[ID] = c.[IncomePrivateID]

left join dbo.TradingArea tarea on tarea.[ID] = ml.[TradingAreaID]
left join dbo.SalesChannel sc on sc.[ID] = ml.[ChannelID]
left join dbo.CustomerType ct on ct.[ID] = ml.[CustomerTypeID]
left join dbo.PaymentType pt on pt.[ID] = ml.[PaymentTypeID]
left join dbo.ProgramType prt on prt.[ID] = ml.[ProgramTypeID]
left join dbo.ProductType pdt on pdt.[ID] = ml.[ProductType]

left join dbo.CICMLApplication c1 WITH (NOLOCK) on c1.[ID] = ml.[CICMLApplicationID1]
left join dbo.CIC as cic on cic.[ID] = c1.[CICID]

left join dbo.CICMLApplication c2 WITH (NOLOCK) on c2.[ID] = ml.[CICMLApplicationID2]
left join dbo.CICMLApplication c3 WITH (NOLOCK) on c3.[ID] = ml.[CICMLApplicationID3]
left join dbo.CICMLApplication c4 WITH (NOLOCK) on c4.[ID] = ml.[CICMLApplicationID4]
left join dbo.ApprovalMLApplication a1 WITH (NOLOCK) on a1.[ID] = ml.[ApprovalID1]
left join dbo.ApprovalMLApplication a2 WITH (NOLOCK) on a2.[ID] = ml.[ApprovalID2]

left join dbo.ReworkReason rr on rr.[ID] = a2.[RejectReasonID]
left join dbo.ReworkReason rc on rc.[ID] = a2.[CancelReasonID]
left join dbo.Disbursement dis WITH (NOLOCK) on dis.[ApplicationNo] = ml.[ApplicationNo]	
where 
(([dbo]._fGetShortDate([ReceivedDate]) >= [dbo]._fGetShortDate(@fDate) and
[dbo]._fGetShortDate([ReceivedDate]) <= [dbo]._fGetShortDate(@tDate)) and 
ml.[Status] in (@status1,@status2))
order by ml.[ReceivedDate]

END



GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_tat_al]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_tat_al] 
	@status1 int,
	@status2 int,
	@fdate datetime,
	@tdate datetime
AS
BEGIN

	select 
		m.[ApplicationNo],
		CONVERT(VARCHAR(10), m.[ReceivedDate], 101) as [ReceivedDate],
		m.[Status],
		m.[ARMCode],
		m.[AmountRequest] as AmountApplied,
		al.[LoanAmount] as AmountApproved,
		st.[StatusName],
		m.[TeleStatus],
		c.[FullName] as CustomerName,
		c.[PassportID] as CustomerID,
		c.[MobileNo] as CustomerMobile,
		cc.[Name] as CompanyCodeName,
		sc.[Name] as ChannelName,
		ct.[Name] as CityBranch,
		c.RLSCompanyCode,
		m.ProgramCode,		
		(case when (select count(*) from dbo.AppActionLog where ([ApplicationNo] = m.[ApplicationNo] and [Action] = 'LOReworkToSC')) > 0 then 'YES' else 'NO' end) as ReworkSC,
		(case when (select count(*) from dbo.AppActionLog where ([ApplicationNo] = m.[ApplicationNo] and [Action] = 'LOReworkToCI')) > 0 then 'YES' else 'NO' end) as ReworkCI,
		c.EmailAddress1,
		c.EmailAddress2,
		c.EmailAddress3,
		c.NationalityCode,
		m.EOpsTxnRefNo,
		CONVERT(VARCHAR(10), m.HardCopyAppDate, 101) as HardCopyAppDate,
		--
		m.BrandCar,
		m.Model,
		m.CarType,
		ISNULL(m.YearOfManufacture, 0) as YearOfManufacture,
		ISNULL(m.NumberOfSeats, 0) as NumberOfSeats,
		m.EngineNumber,
		m.ChassisNumber,
		m.PlateFormNumber,
		REPLACE(CONVERT(varchar, CAST(m.PurchasedPrice as money), 1), '.00', '') as PurchasedPrice,
		REPLACE(CONVERT(varchar, CAST(m.CollateralValue as money), 1), '.00', '') as CollateralValue,
		m.InsuranceCompanyName,
		REPLACE(CONVERT(varchar, CAST(m.InsuranceAmount as money), 1), '.00', '') as InsuranceAmount,
		REPLACE(CONVERT(VARCHAR(11), m.InsuranceExpiredDate, 106), ' ', '/') as InsuranceExpiredDate,
		REPLACE(CONVERT(VARCHAR(11), m.PostDisbursementConditionExpiryDate, 106), ' ', '/') as PostDisbursementConditionExpiryDate,
		m.CarDealerName,
		m.CarDealerAddress
	from [dbo].[MLApplication] m 
	left join [dbo].[tblStatusName] st on st.[ID] = m.[Status]
	left join [dbo].[SalesChannel] sc on sc.[ID] = m.[ChannelID]
	left join [dbo].[CustomerType] ct on ct.[ID] = m.[CustomerTypeID]
	left join [dbo].[ApprovalMLApplication] al on al.[ID] = m.[ApprovalID2]
	left join [dbo].[Customer] c on c.[ID] = m.[MainBorrowerID]
	left join [dbo].[CompanyCode] cc on cc.[ID] = c.[CompanyCodeID]
	where (m.[Status] not in (@status1,@status2) and
		[dbo].[_fgetshortdate](m.[ReceivedDate]) between [dbo].[_fgetshortdate](@fdate) and [dbo].[_fgetshortdate](@tdate))
	order by m.[ReceivedDate] desc

END




GO
/****** Object:  StoredProcedure [dbo].[sp_report_al_application_tat_al_direct_sale]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_report_al_application_tat_al_direct_sale] 
	@saleID varchar(7),
	@status1 int,
	@status2 int,
	@fdate datetime,
	@tdate datetime
AS
BEGIN

	select 
		m.[ApplicationNo],
		CONVERT(VARCHAR(10), m.[ReceivedDate], 101) as [ReceivedDate],
		m.[Status],
		m.[TeleStatus],
		m.[ARMCode],
		m.[AmountRequest] as AmountApplied,
		al.[LoanAmount] as AmountApproved,
		st.[StatusName],
		c.[FullName] as CustomerName,
		c.[PassportID] as CustomerID,
		c.[MobileNo] as CustomerMobile,
		cc.[Name] as CompanyCodeName,
		sc.[Name] as ChannelName,
		ct.[Name] as CityBranch,
		c.RLSCompanyCode,
		m.ProgramCode,		
		(case when (select count(*) from dbo.AppActionLog where ([ApplicationNo] = m.[ApplicationNo] and [Action] = 'LOReworkToSC')) > 0 then 'YES' else 'NO' end) as ReworkSC,
		(case when (select count(*) from dbo.AppActionLog where ([ApplicationNo] = m.[ApplicationNo] and [Action] = 'LOReworkToCI')) > 0 then 'YES' else 'NO' end) as ReworkCI,
		c.EmailAddress1,
		c.EmailAddress2,
		c.EmailAddress3,
		c.NationalityCode,
		m.EOpsTxnRefNo,
		CONVERT(VARCHAR(10), m.HardCopyAppDate, 101) as HardCopyAppDate,
		--
		m.BrandCar,
		m.Model,
		m.CarType,
		ISNULL(m.YearOfManufacture, 0) as YearOfManufacture,
		ISNULL(m.NumberOfSeats, 0) as NumberOfSeats,
		m.EngineNumber,
		m.ChassisNumber,
		m.PlateFormNumber,
		REPLACE(CONVERT(varchar, CAST(m.PurchasedPrice as money), 1), '.00', '') as PurchasedPrice,
		REPLACE(CONVERT(varchar, CAST(m.CollateralValue as money), 1), '.00', '') as CollateralValue,
		m.InsuranceCompanyName,
		REPLACE(CONVERT(varchar, CAST(m.InsuranceAmount as money), 1), '.00', '') as InsuranceAmount,
		REPLACE(CONVERT(VARCHAR(11), m.InsuranceExpiredDate, 106), ' ', '/') as InsuranceExpiredDate,
		REPLACE(CONVERT(VARCHAR(11), m.PostDisbursementConditionExpiryDate, 106), ' ', '/') as PostDisbursementConditionExpiryDate,
		m.CarDealerName,
		m.CarDealerAddress
	from [dbo].[MLApplication] m WITH (NOLOCK)
	left join [dbo].[tblStatusName] st WITH (NOLOCK) on st.[ID] = m.[Status]
	left join [dbo].[SalesChannel] sc WITH (NOLOCK) on sc.[ID] = m.[ChannelID]
	left join [dbo].[CustomerType] ct WITH (NOLOCK) on ct.[ID] = m.[CustomerTypeID]
	left join [dbo].[ApprovalMLApplication] al WITH (NOLOCK) on al.[ID] = m.[ApprovalID2]
	left join [dbo].[Customer] c WITH (NOLOCK) on c.[ID] = m.[MainBorrowerID]
	left join [dbo].[CompanyCode] cc WITH (NOLOCK) on cc.[ID] = c.[CompanyCodeID]
	where (m.[PIDOfSaleStaff] = @saleID and m.[Status] not in (@status1,@status2) and
		[dbo].[_fgetshortdate](m.[ReceivedDate]) between [dbo].[_fgetshortdate](@fdate) and [dbo].[_fgetshortdate](@tdate))
	order by m.[ReceivedDate] desc

END




GO
/****** Object:  StoredProcedure [dbo].[sp_work_in_progress_load_child_detail]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Phan Duy Thong>
-- Create date: <2018-06-15>
-- Description:	<work_in_progress_load_child_detail>
-- sp_work_in_progress_load_child_detail 19
-- =============================================
CREATE PROCEDURE [dbo].[sp_work_in_progress_load_child_detail]
	@ApplicationId int 
AS
BEGIN
	select 
	app.pk_id as ApplicationID,
	app.application_no as ApplicationNo,
	cust.pk_id as CustomerID,
	cust.[full_name] as CustomerName,
	iden.identification_no as IDNumber,
	seg.pk_id as CustomerSegmentID,
	seg.[name] as CustomerSegment,
	sc.pk_id as ChannelID,
	sc.[name] as ChannelName,
	bl.pk_id as LocationID,
	bl.[name] as LocationName,
	alper.amount_requested_vnd as AmountRequest,
	appro.loan_amount_approved as AmountApproved
	from application_information app
	left join customer_information cust on app.pk_id = cust.fk_application_information_id
	left join customer_identification iden on iden.fk_customer_information_id = cust.pk_id
	left join m_customer_segment seg on app.fk_m_customer_segment_id = seg.pk_id
	left join m_sales_channel sc on app.fk_m_sales_channel_id = sc.pk_id
	left join m_branch_location bl on app.fk_m_branch_location_id = bl.pk_id
	left join approval_information appro on app.pk_id = appro.fk_application_information_id
	left join al_personal_application alper ON app.pk_id = alper.fk_application_information_id
	where app.pk_id = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_work_in_progress_search]    Script Date: 6/22/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Phan Duy Thong>
-- Create date: <2018-06-15>
-- Description:	<work_in_progress_search>
-- [sp_work_in_progress_search] 2, '2018-05-14', '2018-06-30', null, null, null, null
-- =============================================
CREATE PROCEDURE [dbo].[sp_work_in_progress_search]
	@TypeId int= null,
	@FromDate datetime = null,
	@ToDate datetime = null,
	@StatusId int = null,
	@CustomerId int = null,
	@CompanyId int = null,
	@ApplicationNo nvarchar(50) = null
AS
BEGIN
	declare @sql_exec nvarchar(max) = 'select distinct app.pk_id as ApplicationID, 
	app.application_no as ApplicationNo,
	t.pk_id as ApplicationTypeID,
	t.[name] as ApplicationType, 
	app.received_date as ReceivedDate,	
	s.[name] as ApplicationStatus, 	
	s.pk_id as ApplicationStatusID,
	tl.pk_id as TeleStatusID,
	tl.[name] as TeleStatus,
	app.is_locked as IsLock,
	app.user_lock as UserLock,
	app.is_remodified as IsRemodified,
	app.is_rework as IsRework,
	app.is_fraud_bl_approved as IsFraudBLApproved,
	app.is_fasg as IsFasg,
	app.is_override_checking as IsOverrideChecking,
	app.is_sms_send as IsSMSSend,
	app.is_send_email as IsSendEmail,
	app.is_duplication as IsDuplication,
	app.is_email_verification as IsEmailVerification,
	app.is_active as IsActive,
	app.is_black_list as IsBlackList,
	app.is_existing as IsExisting,
	app.is_staff as IsStaff
	from application_information app
	inner join m_type t on app.fk_m_type_id = t.pk_id
	inner join m_status s on app.fk_m_status_id = s.pk_id
	left join m_status tl on app.fk_tele_status_id = tl.pk_id
	left join customer_information c on app.pk_id = c.fk_application_information_id
	left join company_information p on app.pk_id = p.fk_application_information_id
	where app.received_date between cast(' + '''' + cast(@FromDate as nvarchar(50)) + ''''
	+ ' as datetime) and cast(' + '''' + cast(@ToDate as nvarchar(50)) + '''' + ' as datetime)'

	if(@TypeId is not null and @TypeId > 0)	
		set @sql_exec += ' and (t.parent_id = ' + CAST(@TypeId as nvarchar(50)) + ' or app.fk_m_type_id = ' + CAST(@TypeId as nvarchar(50)) + ')'

	if(@StatusId is not null and @StatusId > 0)
		set @sql_exec += ' and app.fk_m_status_id = ' + CAST(@StatusId as nvarchar(50))

	if(@CustomerId is not null and @CustomerId > 0)
		set @sql_exec += ' and c.pk_id = ' + CAST(@CustomerId as nvarchar(50))

	if(@CompanyId is not null and @CompanyId > 0)
		set @sql_exec += ' and p.pk_id = ' + CAST(@CompanyId as nvarchar(50))

	if(@ApplicationNo is not null and @ApplicationNo <> '')
		set @sql_exec += ' and app.application_no like N' + '''' + '%' + @ApplicationNo + '%' + ''''

	exec (@sql_exec)
END
GO
