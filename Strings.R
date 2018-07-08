# String: sequência de caracters entre aspas (simples ou duplas).
# Tanto faz usar aspas duplas ou únicas.

library(stringr)

'a character string using single quotes'
"a character string using double quotes"


# Criando vetores de character vazios.
char_vector <- character(0)

# Agora preenchendo o char_vector.
char_vector[2] <- 'coisa'
char_vector[5] <- 'tio'
char_vector[3] <- 'pincel'
print(char_vector)


# Tamanho do vetor.
length(char_vector)


# COLAR
paste('I', 'Love', 'R', sep = '-')
paste("The Life of", pi, sep = ' ')
paste('Casa', 1:5, sep = '.')
paste(1:3, c("!", '&','*'), sep = '', collapse = '')
paste(1:3, c("!", '&','*'), sep = '')
paste(1:3, c("!", '&','*'), sep = '  ')
paste(1:3, "!", '&','*')

# Colar colapsando:pasteo
paste0("let's", "collapse", "all", "these", "words")
paste0('Vamos', 'colapsar', 'todas', 'estas', 'palavras?')


# Quantos caracteres?
nchar(c("How", "many", "characters?"))
nchar("How many characters?")

# Quantos elementos?
length(c("How", "many", "characters?"))
length("How many characters?")

# Tudo em minúscula:to lower case
tolower(c("aLL ChaRacterS in LoweR caSe", "ABCDE"))

# Tudo em maiúscula: to upper case
toupper(c("All ChaRacterS in Upper Case", "abcde"))

# Trocando os caracteres de um character.
# chartr(o antigo, o novo, x)
chartr("a", "A", "This is a boring string")


# Múltiplas trocas.
crazy <- c("Here's to the crazy ones", "The misfits", "The rebels")
chartr("aei", "#!?", crazy) # troca o a por #, o e por ! e o i por ?

# Abreviação: serve para os nomes ficarm menores.
some_colors <- colors()[1:4]
abbreviate(some_colors)
abbreviate(some_colors, minlength = 5)
abbreviate(some_colors, minlength = 4, method = "both.sides")


# Operações com conjuntos.
# União.
set1 <- c("some", "random", "words", "some")
set2 <- c("some", "many", "none", "few")
union(set1, set2)

# Interceção.
set3 <- c("some", "random", "few", "words")
set4 <- c("some", "many", "none", "few")
intersect(set3, set4)

# Diferença: o que está no 1º e não está no 2º.
set5 <- c("some", "random", "few", "words")
set6 <- c("some", "many", "none", "few")
setdiff(set5, set6)
setdiff(set6, set5)

# Dois conjuntos são iguais? Não importa a ordem em que e encontram.
set7 <- c("some", "random", "strings")
set8 <- c("some", "many", "none", "few")
set9 <- c("strings", "random", "some")
setequal(set7, set8)
setequal(set7, set9)


# Dois conjuntos são idênticos? Considera a ordem.
identical(set7, set7)
identical(set7, set9)


# Certo elemento está em um conjunto?
set10 <- c("some", "stuff", "to", "play", "with")
elem1 <- "play"
elem2 <- "crazy"

elem2 %in% set10
elem1 %in% set10
c('a', 'b', 'c') %in% c('a', 'j', 'b')
c('a', 'j', 'b') %in% c('a', 'b', 'c')

# Stringr package.
library(stringr)

# Começam sempre com 'str_'
# Colar. 
str_c("May", "The", "Force", "Be", "With", "You")
str_c(letters, collapse = "") 
str_c("May", "The", "Force", NULL, "Be", "With", "You", character(0))
str_dup(fruit, times = 2) # Duplica os strings individualmente.
str_split_fixed(fruit, " ", n = 2) # Separa em duas colunas os nomes compostos. Quando tem um nome só nada acontece.
str_glue("Pi is {pi}") # Cria uma frase a apartir de strings.
str_glue_data(mtcars, "{rownames(mtcars)} has {hp} hp") # Cria frases a partir de dataframes.

# Conta o número de caracteres.
some_text <- c("one", "two", "three", NA, "five")
str_length(some_text)


# Convertendo factor para character.
some_factor <- factor(c(1,1,1,2,2,2), labels = c("good", "bad"))
some_factor

# Verificando os tamanhos de some_factor.
str_length(some_factor)

# String: sequência de caracters entre aspas (simples ou duplas).

fruit  #vetor com 80 elementos no pacote stringr.
glimpse(fruit)

# 
str_detect(fruit, 'a')
str_which(fruit, "a")
str_count(fruit, "a")
str_locate(fruit, "a")
str_length(fruit)
str_sub(fruit, 1, 3) # Escolhe do 1º ao 3º caracter.
str_sub(fruit, -2) # Escolhe do último ao penúltimo caracter.
str_subset(fruit, "b") # Escolhe as palavras que têm o caracter 'b'.
str_subset(fruit, "pea") # Escolhe as palavras que têm o caracter 'pea'.
str_subset(fruit, "ui") # Escolhe as palavras que têm o caracter 'ui'.
str_subset(fruit, "berry")
str_subset(fruit, " berry")
str_subset(fruit, "  berry")
str_extract(fruit, "[aeiou]")


sentences <- "Montreal, é prá lá que vou com Maria, Anita e Alice."
str_to_lower(sentences)
str_to_upper(sentences)
str_to_title(sentences)


str_replace(fruit, "a", "X-X") # Só troca o primeiro que aparece.
str_replace(c('terra', 'casa', 'texto', 'carro'), 't', '$') 
str_replace(c('terra', 'casa', 'texto', 'carro'), 'ca', '*****') 
str_replace_all(fruit, "a", "T") # Troca todos.
str_replace_all(c('terra', 'casa', 'texto', 'carro', 'banana'), 'a', 'OSCAR') 
