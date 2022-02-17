# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


OccupationArea.destroy_all
OccupationArea.create(
	[
		{ name: 'Comércio' },
		{ name: 'Alimentos' },
		{ name: 'Construção' },
		{ name: 'Contabilidade' },
		{ name: 'Gráfica' },
		{ name: 'Administrativo' },
		{ name: 'Limpeza' },
		{ name: 'Recursos Humanos' },
		{ name: 'Educação' },
		{ name: 'Logística' },
		{ name: 'Manutenção' },
		{ name: 'Produção' },
		{ name: 'Mecânico' },
		{ name: 'Veiculos' },
		{ name: 'Informática' },
		{ name: 'Financeiro' },
		{ name: 'Saúde' },
    { name: 'Programação' },
    { name: 'Gestão de Tecnologia' },
    { name: 'Front-end' },
    { name: 'Ciência de Dados' },
    { name: 'DevOps' },
    { name: 'Mobile' },
    { name: 'Produto' },
    { name: 'Requisitos' },
    { name: 'Design/UX' },
    { name: 'Inovação e Gestão' },
    { name: 'Agile' },
    { name: 'Cyber Security' },
    { name: 'Customer Experience' },
    { name: 'Marketing Digital' },
		{ name: 'Serviços Pessoais' }
	]
)