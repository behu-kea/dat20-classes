# https://kea-fronter.itslearning.com/LearningToolElement/ViewLearningToolElement.aspx?LearningToolElementId=726905
# https://github.com/HackYourFuture-CPH/databases/blob/master/lesson1/SQL%20Joins.pdf
# https://github.com/HackYourFuture-CPH/databases/blob/master/lesson1/SQL-Joins.md
# Joins

# 1)
select vendors.vendor_name, concat(vendors.vendor_address1, ' ', IFNULL(vendors.vendor_address2, '')), invoices.credit_total, invoices.payment_date
from vendors
left join invoices
	on vendors.vendor_id = invoices.vendor_id
where left(invoices.payment_date, 7) = '2014-06';

# 2) hmm det her ska jeg lige have noget hjælp til
select *
from vendors
left join invoices
	on vendors.vendor_id = invoices.vendor_id
left join invoice_line_items
	on invoice_line_items.invoice_id = invoices.invoice_id
where invoices.vendor_id is not null and 
	left(vendors.vendor_name, 1) = 'c' and
    invoice_line_items.line_item_amount > 1000
order by vendors.default_account_number;

# 3)
select *
from vendors
where vendors.vendor_state = 'CA' and
	(vendors.vendor_contact_last_name like '%on%' or vendors.vendor_contact_first_name like '%on%' or
    vendors.vendor_contact_last_name like '%ny%' or vendors.vendor_contact_first_name like '%ny%')
#group by vendors.vendor_contact_last_name
    
# 4)

