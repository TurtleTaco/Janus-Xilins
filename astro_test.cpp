#include "janus.hpp"
#include <limits>
using namespace std;
typedef numeric_limits< double > dbl;

int main(){
	cout.precision(dbl::digits10);
	int correct = 1;
	double answer[18] = {
			6.175573e-04, -3.624142e-03,
			1.161526e-01, 2.812295e-01,
			-9.776683e-02, -7.234537e-01,
			8.253466e-01, 5.508274e-01,
			2.546414e-02, -1.456450e+00,
			-5.137464e+00, 1.690271e+00,
			8.480965e+00, 3.837737e+00,
			7.522079e+00, 1.784565e+01,
			2.974610e+01, 2.610280e+00
	};


	REB_PARTICLE_INT_TYPE result[54];
	//result = new reb_particle[9];

	astroSim(result);
	int count = 0;
	int i = 0;
	for(i=0; i<54; i++){
		if (count == 3){
			count = 0;
			cout << std::endl;
		}
		cout << result[i]/1e16 << ", ";

//		if (result[i].x != answer[i * 2]){
//			correct = false;
//			printf("here%e\n", answer[i*2]);
//		}
//		if (result[i].y != answer[i * 2 + 1]){
//			correct = false;
//			printf("here");
//		}
		count ++;
	}

//	if (correct == true)
//		printf("Functionality passed");
}
