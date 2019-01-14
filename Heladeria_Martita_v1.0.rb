puts ""
puts "Hola!, cual es tu nombre?"
puts ""

usuario = gets.chomp
puts ""

puts "================================================="
puts ""
puts "               Bienvenido #{usuario}!"
puts "        Esta es la heladeria \"Martita\"."
puts "            Tenemos estos sabores:"
sabores = ["Fresa", "Chocolate", "Lucuma"]
sabores.each do |x|
puts "                  - #{x}"
end
puts ""
puts "================================================="

vv_fresa = 1.00
vv_chocolate = 1.50
vv_lucuma = 2.00

subtotal = 0.00
impuestos = 0.18

puts ""
puts "Elige un sabor (1/2/3):"
puts ""
puts "1. Fresa: #{vv_fresa} soles + IGV."
puts "2. Chocolate: #{vv_chocolate} soles + IGV."
puts "3. Lucuma: #{vv_lucuma} soles + IGV."
puts ""

opcion = gets.chomp.to_i
puts ""

if opcion == 1
  puts "==> Has elegido: Helado de Fresa."
  subtotal = vv_fresa
elsif opcion == 2
  puts "==> Has elegido: Helado de Chocolate."
  subtotal = vv_chocolate
elsif opcion == 3
  puts "==> Has elegido: Helado de Lucuma."
  subtotal = vv_fresa
else
  puts "La opcion introducida no es valida"
end

puts ""
puts "Cuantos helados deseas?:"
puts ""
cantidad = gets.chomp.to_i
puts ""

def clear()
    system ('clear')
end

clear

total =  (subtotal + subtotal * impuestos) * cantidad

puts "==> Total: #{total.round(2)} soles."
puts ""
puts "  Gracias por su preferencia. Vuelva pronto."
puts ""
