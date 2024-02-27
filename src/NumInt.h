#ifndef NUMINT_H
#define NUMINT_H

#include <Eigen/Dense>

class NumInt{
public:
    NumInt() {}
    ~NumInt(){}

    static Eigen::MatrixXd GuassQaudrature(const int &N, double &a, double &b);
    static Eigen::MatrixXd GuassLobattoQaudrature(const int& N);
};

#endif // NUMINT_H
