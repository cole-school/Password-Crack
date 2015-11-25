all: crack_pthread crack_sequential generate_hashes

crack_pthread: crack_mpi.c
	gcc crack_pthread.c -o crack_pthread -lpthread

crack_sequential: crack_sequential.c
	gcc crack_sequential.c -o crack_sequential

generate_passwords: generate_passwords.c
	gcc generate_passwords.c -o generate_passwords 

generate_hashes: generate_hashes.c
	gcc encrypt_decrypt.c generate_hashes.c -o generate_hashes -lcrypto -lssl

generate_hashes_test: generate_hashes_test.c
	gcc encrypt_decrypt.c generate_hashes_test.c -o generate_hashes_test -lcrypto -lssl

clean: 
	rm -rf crack_pthread
	rm -rf crack_sequential
	rm -rf generate_hashes
	rm -rf generate_hashes_test
