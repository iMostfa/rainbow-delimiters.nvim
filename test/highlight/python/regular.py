my_list = [[['Hello, world!']]]
my_dict = {'x': {'x': {'x': 'Hello, wold!'}}}
my_set = {{{{'Hello, wold!'}}}}
my_tuple = (((('Hello, wold!'),),),)

list_comp = [i for i in [j for j in range(5)] if i % 2 == 0]
dict_comp = {k: v for k, v in {k: v for k, v in {'k': 'v'}.items()}
             if k == 'k'}
set_comp = {i for i in {j for j in range(5)} if i % 2 == 0}
gen_comp = (i for i in (j for j in range(5)) if i % 2 == 0)

print(2 + ((((3)))))
print(len(my_list))
