
NAME = tic_tac_toe

CC = gcc

CFLAGS = -Wall -Wextra -Werror

RAYLIB = $(HOME)/raylib

INCLUDES = -I$(RAYLIB)/src

LIBS = -L$(RAYLIB)/build/raylib -lraylib -lm -ldl -lpthread -lrt -lX11

SRCS = $(wildcard *.c) $(wildcard src/*.c)

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME) $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
