# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: peerdb <peerdb@student.codam.nl>             +#+                      #
#                                                    +#+                       #
#    Created: 2020/10/02 21:53:48 by peerdb        #+#    #+#                  #
#    Updated: 2020/10/02 22:43:38 by peerdb        ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = getnextline.a

FLAGS = -W -Wall -Wextra -Werror -pedantic -ansi -O3 -std=c++98 -g
FILES = get_next_line.cpp
OBJ = $(FILES:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)
	# $(CXX) $(OBJ) $(FLAGS) -o test

%.o: %.cpp
	$(CXX) $(FLAGS) -c $< -o $@ -I .

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME) *.dSYM
	
re: fclean all

test: re
	$(CXX) $(FLAGS) $(NAME) main.cpp -o test

.PHONY: clean fclean re all