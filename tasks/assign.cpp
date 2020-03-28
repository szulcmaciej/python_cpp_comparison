#include <iostream>
#include <cstdlib>
using namespace std;

class Example{
    private:
        int counter;

    public:
        Example() {
            counter = 0;
        };
};

int main(int argc, char** argv){
	const int LIMIT = atoi(argv[1]);
	int counter = 0;
	for(int i = 0; i < LIMIT; i++){
		// Example* e =  new Example();
        // delete e;
        Example e = Example();
	}
	return 0;
}
