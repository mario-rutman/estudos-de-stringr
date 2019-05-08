library(stringr)
library(tidyverse)

# String: sequência de caracters entre aspas (simples ou duplas).
# Tanto faz usar aspas duplas ou únicas.



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
paste('Casa', c("jaca", "amor", "lem"), sep = '***')
paste('Casa', c("jaca", "amor", "lem"))
paste('Casa', "jaca", "amor", "lem")
paste(1:3, c("!", '&','*'), sep = '', collapse = '')
paste(1:3, c("!", '&','*'), sep = '')
paste(1:3, c("!", '&','*'), sep = '  ')
paste(1:3, "!", '&','*')

# Colar colapsando:pasteo
paste0("let's", "collapse", "all", "these", "words.")
paste0('Vamos', 'colapsar', 'todas', 'estas', 'palavras.')


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
chartr('l', 'b','Ela é louca pela lua')

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
library(htmlwidgets) #Para usar o str_view()

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
some_factor <- factor(c(1,1,1,2,1,2,1), labels = c("good", "bad"))
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
str_sub(object, -3, -1) # Escolhe do último ao antepenúltimo.
str_subset(fruit, "b") # Escolhe as palavras que têm o caracter 'b'.
str_subset(fruit, "pea") # Escolhe as palavras que têm o caracter 'pea'.
str_subset(fruit, "ui") # Escolhe as palavras que têm o caracter 'ui'.
str_subset(fruit, "berry")

str_subset(fruit, " berry")
str_subset(fruit, "  berry")
str_extract(fruit, "[aeiou]")


names <- c("Keisha", "Mohammed", "Jane", 'Anita', 'Alice', 'Mammmmeixa', 'Wilson', 'Márcia')
str_sort(names) #Coloca em ordem alfabética.
str_view(names, "^M") #identify strings that start with "M"
str_view(names, 'a$') #identifica strings que terminam com 'a' minúsculo.
str_count(names, "^M") # conta em cada palavra os nomes que começam com M
str_count(names, "m") # conta em cada palavra quantos 'm' tem.
sum(str_count(names, 'a$')) # soma os nomes que terminam com 'a'.

colors <- c('red','orange','yellow','green','Blue','violet','#C8C8C8','#000000')
str_detect(colors, '\\d')
str_subset(colors, '^[a-z]') # faz um subconjunto dos elementos que começam com minúscula
str_view_all(colors, "\\d+[A-Z]+")
str_count(colors, '[a-zA-Z]') # conta o número de letras maiúsculas ou minúsculas. 
str_view_all(colors, '^#') # string que começa com #.
str_view_all(colors, '[a-z]') # mostra as palavras que começam com vogal.


## identify all lowercase vowels
str_view_all(names, "[aeiou]")

## identify anything that's NOT a lowercase vowel
str_view_all(names, "[^aeiou]")

addresses <- c("1234 Main Street", "1600 Pennsylvania Ave S/A", "Brick Buildinnnng")
## identify anything that's a digit
str_view_all(addresses, "\\d")

## identify any whitespace
str_view_all(addresses, "\\s")

## identify any character
str_view_all(addresses, ".")

str_view_all(addresses, "S/A")


# Regular Expressions - Regex
# ? : 0 or 1
# + : 1 or more
# \* : 0 or more
# {n} : exactly n times
# {n,} : n or more times
# {n,m} : between n and m times

# "[aeiou]" : matches a, e, i, o, or u
# "[^aeiou]": matches anything other than a, e ,i , o, or u
# "\d" : matches any digit
# "\s" : matches any whitespace (space, tab, newline)
# "." : matches any character (except a newline)


## identify any time n shows up one or more times
str_view_all(addresses, "n+")

## identify any time n shows up
str_view_all(addresses, "n{1}")

## identify any time n shows up exactly two times in a row
str_view_all(addresses, "n{2}")

## identify any time 'nn' shows up one or more times 
str_view_all(addresses, "nn+")

## identify any time n shows up two or three times 
str_view_all(addresses, "n{2,3}")

## identify any time n shows up three or four times 
str_view_all(addresses, "n{3,4}")

sentences <- "Montreal, é prá lá que vou com Maria, Anita e Alice."
str_to_lower(sentences)
str_to_upper(sentences)
str_to_title(sentences)


str_replace(fruit, "a", "X-X") # Só troca o primeiro que aparece.
str_replace(c('terra', 'casa', 'texto', 'carro'), 't', '$') 
str_replace(c('terra', 'casa', 'texto', 'carro'), 'ca', '*****') 
str_replace_all(fruit, "a", "T") # Troca todos.
str_replace_all(c('terra', 'casa', 'texto', 'carro', 'banana'), 'a', 'OSCAR')

# Este é bom para fazer muitas trocas.
frutas <- c("one apple", "two pears", "three bananas")
frutas %>%
  str_replace_all(c("one" = "um", "two" = "2", "three" = "três"))

shopping_list <- c("apples x4", "bag of flour", "bag of sugar", "milk x2")
str_extract(shopping_list, "\\d")
str_extract(shopping_list, "[a-z]+")
str_extract(shopping_list, "[a-z]{1,4}")
str_extract(shopping_list, "\\b[a-z]{1,4}\\b")

# Extract all matches
str_extract_all(shopping_list, "[a-z]+")
str_extract_all(shopping_list, "\\b[a-z]+\\b")
str_extract_all(shopping_list, "\\d")
