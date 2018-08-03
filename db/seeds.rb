contact = Contact.create(
	phone: "09812345678",
	fax: "09812345678",
	email: "admin@lagomdecor.vn",
	address: "Địa chỉ: 114 Đường số 1, Phường 16, Quận Gò Vấp, Hồ Chí Minh",
	opendate: "Monday",
	closedate: "Friday",
	openat: "08:00",
	closeat: "16:00")

admin = Admin.create(
	    email: "anu.in.vietnam@gmail.com",
	    password: "000000",
	    password_confirmation: "000000",
	    username: "anu",
	    role: "admin",
	    phone: "00000000000")
	admin.skip_confirmation!
	admin.save!