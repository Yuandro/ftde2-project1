SELECT 	order_id,
		order_date,
		a.user_id,
		b.payment_name,
		c.shipper_name,
		order_price,
		order_discount,
		d.voucher_name,
		d.voucher_price,
		order_total,
		e.rating_status
FROM public.tb_orders AS a 
	LEFT JOIN public.tb_payments AS b ON a.payment_id = b.payment_id
	LEFT JOIN public.tb_shippers AS c ON a.shipper_id = c.shipper_id 
	LEFT JOIN public.tb_vouchers AS d ON a.voucher_id = d.voucher_id
	LEFT JOIN public.tb_ratings As  e ON a.rating_id = e.rating_id ;