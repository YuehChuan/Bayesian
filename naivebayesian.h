#include <vector>
#include "bayesian.h"
namespace baysian {

class naiveBayesian : public bayesian {
 private:
  long double **probabilityTable;
  double *classCount;  // this array store the total number of each
                       // decision's class in training data
  int *discrete;  // this array store the information about each attribute is
                  // continuous or not
  int *classNum;  // this array store the number of classes of each attribute
  int outputClassNum;  // the number of output classes

 public:
  void train(char *);
  void predict(char *);
  // calculate the probability of each choice and choose the greatest one as our
  // prediction
  naiveBayesian(char *);
  // initialize all the information we need from training data
  ~naiveBayesian();
  // release memory
};

}  // namespace baysian
