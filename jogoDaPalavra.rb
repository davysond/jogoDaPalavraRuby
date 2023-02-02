#coding: utf-8

novo_jogo = "s"

while novo_jogo == "s"

	# Cria a lista de palavras e sorteia uma para o jogo
	palavras = %w{cachorro gato camelo formiga girafa ornitorrinco lhama morcego camundongo dromedario}
	palavra_sorteada = palavras.sample
	palavra_tamanho = palavra_sorteada.size

	print "Descubra a palavra que estou pensando: "

	# Monta e exibe a palavra parcial no estilo "_ _ _ _" com base no número de letras
	palavra_parcial = []
	palavra_tamanho.times do
		palavra_parcial << " _ "
	end
	print palavra_parcial.join

	fim = false

	while fim == false
		# Captura a letra digitada pelo jogador
		print "\nEscolha uma letra: "
		sua_letra = gets.chomp

		aux = 0

		# Verifica se a letra digitada está na palavra sorteada
		palavra_sorteada.each_char do |palavra_letra|
			if palavra_parcial[aux] == ' _ '
				if palavra_letra == sua_letra
					palavra_parcial[aux] = sua_letra
				end
			end

			aux += 1
		end

		# Verifica se a palavra parcial possui algum underline "_" ou seja, ainda não foi advinhada 
		if palavra_parcial.join.count(" _ ") > 0
			fim = false
			print palavra_parcial.join
		else
			fim = true
		end
	end

	puts "Parabéns, a palavra era #{palavra_parcial.join}!"
	puts "Deseja jogar novamente? (s/n)"
	novo_jogo = gets.chomp
end

puts "Obrigado por jogar."
