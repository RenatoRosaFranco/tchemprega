# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'benchmark'

puts 'Start running seeds'

realtime = Benchmark.realtime do
  
  # Modality
  # @implemented
  Modality.destroy_all
  Modality.create(
    [
      { name: 'Presencial' },
      { name: 'Remoto' },
      { name: 'Híbrido' }
    ]
  )

  # Period
  # @implemented
  Period.destroy_all
  Period.create(
    [
      { name: 'Integral' },
      { name: 'Parcial manhãs' },
      { name: 'Parcial tardes' },
      { name: 'Parcial noites' },
      { name: 'Noturno' }
    ]
  )

  # HiringType
  # @implemented
  HiringType.destroy_all
  HiringType.create(
    [
      { name: 'Efetivo - CLT' },
      { name: 'Cooperado' },
      { name: 'Temporário' },
      { name: 'Jovem Aprendiz' },
      { name: 'Trainee' },
      { name: 'Prestador de Serviços (PJ)' },
      { name: 'Estágio' },
      { name: 'Free-Lance' },
      { name: 'Autônomo' },
      { name: 'Outros' }
    ]
  )

  # Salary
  # @implemented
  Salary.destroy_all
  Salary.create(
    [
      { name: 'Até R$ 1.000' },
      { name: 'A partir de R$ 1.000' },
      { name: 'A partir de R$ 2.000' },
      { name: 'A partir de R$ 3.000' },
      { name: 'A partir de R$ 4.000' },
      { name: 'A partir de R$ 5.000' },
      { name: 'A partir de R$ 6.000' },
      { name: 'A partir de R$ 7.000' },
      { name: 'A partir de R$ 8.000' },
      { name: 'A partir de R$ 9.000' },
      { name: 'A partir de R$ 10.000' },
      { name: 'A combinar'}
    ]
  )

  # OccupationArea
  # @implemented
  OccupationArea.destroy_all
  OccupationArea.create(
    [
      { name: 'Administração'},
      { name: 'Agricultura, Pecuária, Veterinária' }.
      { name: 'Alimentação / Gastronomia' },
      { name: 'Arquitetura, Decoração, Design' },
      { name: 'Artes' },
      { name: 'Auditoria' },
      { name: 'Ciências, Pesquisa' },
      { name: 'Comercial, Vendas'},
      { name: 'Comércio Exterior, Importação, Exportação' },
      { name: 'Compras' },
      { name: 'Comunicação, TV, Cinema' },
      { name: 'Construção, Manutenção'},
      { name: 'Engenhária' },
      { name: 'Estética' },
      { name: 'Hotelaria, Turismo' },
      { name: 'Industrial, Produção, Fabrica' },
      { name: 'Informática, TI, Telecomunicações' },
      { name: 'Jurídica' },
      { name: 'Logística' },
      { name: 'Marketing' },
      { name: 'Meio Ambiente, Ecologia' },
      { name: 'Moda' },
      { name: 'Qualidade' },
      { name: 'Química, Petroquímica' },
      { name: 'Recursos Humanos' },
      { name: 'Sáude' },
      { name: 'Serviço Social e Comunitário' },
      { name: 'Serviços Gerais' },
      { name: 'Telemarketing' },
      { name: 'Transportes' },
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
end