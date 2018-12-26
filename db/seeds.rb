contact = Contact.create(
	phone: "09812345678",
	fax: "09812345678",
	email: "admin@lagomdecor.vn",
	address: "Địa chỉ: 114 Đường số 1, Phường 16, Quận Gò Vấp, Hồ Chí Minh",
	opendate: "Monday",
	closedate: "Friday",
	openat: "08:00",
	closeat: "16:00")
contact.save!

Banner.create([{ name: 'home slider left image', image: '' }, { name: 'home slider right image', image: '' },
	{ name: 'consulting page banner image', image: '' }, { name: 'contacts page banner image', image: '' }, 
	{ name: 'interior ideas page banner image', image: '' }, { name: 'shop page banner image', image: '' }, 
	{ name: 'projects page banner image', image: '' }, { name: 'videos play page banner image', image: '' }, 
	{ name: 'projects single page banner image', image: '' }, { name: 'interior ideas single page banner image', image: '' },
	{ name: 'consulting page center image', image: '' }])

admin = Admin.create(
	email: "hoangduchuuvn@gmail.com",
	password: "123456",
	password_confirmation: "123456",
	username: "anu",
	role: "admin",
	phone: "00000000000")
admin.skip_confirmation!
admin.save!