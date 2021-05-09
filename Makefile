
SRCS = 	ft_atoi.c 		ft_bzero.c 		ft_calloc.c \
		ft_isalnum.c 	ft_isalpha.c 	ft_isascii.c \
		ft_isdigit.c 	ft_isprint.c 	ft_itoa.c \
		ft_memccpy.c 	ft_memchr.c 	ft_memcmp.c \
		ft_memcpy.c 	ft_memmove.c 	ft_memset.c \
		ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		ft_putstr_fd.c 	ft_split.c 		ft_strchr.c \
		ft_strdup.c  	ft_strjoin.c 	ft_strlcat.c \
		ft_strlcpy.c 	ft_strlen.c 	ft_strmapi.c \
		ft_strncmp.c 	ft_strnstr.c 	ft_strrchr.c \
		ft_strtrim.c 	ft_substr.c 	ft_tolower.c \
		ft_toupper.c 

SRCS_B =	ft_lstnew.c	ft_lstadd_front.c	ft_lstsize.c \
			ft_lstlast.c	ft_lstadd_back.c

OBJS = $(patsubst %.c,%.o,$(SRCS))

OBJS_B = $(patsubst %.c,%.o,$(SRCS_B))

NAME = libft.a

CC = gcc

FLAGS = -Wall -Wextra -Werror

RM = rm -f

all: 		$(NAME)

$(NAME):	$(OBJS)
					ar rcs $(NAME) $?

%.o : %.c
		gcc $(FLAGS) -c $< -o $@

bonus: $(OBJS) $(OBJS_B)
					ar rcs $(NAME) $?

clean:
					$(RM) $(OBJS) $(OBJS_B)

fclean: 	clean
					$(RM) $(NAME)

re:					fclean all

.PHONY: 	all clean fclean re bonus