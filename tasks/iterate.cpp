#include <iostream>
#include <cstdlib>
using namespace std;

int main(int argc, char** argv){
	const int LIMIT = atoi(argv[1]);
	int counter = 0;
	for(int i = 0; i < LIMIT; i++){
		counter = i % 3;
	}
	return 0;
}
