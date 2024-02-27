#ifndef JACOBIPOLYNOMIALS_H
#define JACOBIPOLYNOMIALS_H

#ifndef NUMINT_H
#include <Eigen/Dense>
#endif

class JacobiPolynomials
{
private:
    int* _N;
    double* _a;
    double* _b;
    double* _z;
    bool _opt;

public:
    // 四个构造函数
    JacobiPolynomials(int* N) {
        double a = 0; double b = 0; double z = 0;
        _N = N; _a = &a; _b = &b; _z = &z; _opt = true;
    }

    JacobiPolynomials(int* N, double* z){
        double a=0; double b=0;
        _N = N; _a=&a; _b=&b; _z=z; _opt=true;
    }

    JacobiPolynomials(int* N, double* a, double* b, double* z){
        _N = N; _a=a; _b=b; _z=z;
        _opt=true;
    }

    JacobiPolynomials(int* N, double* a, double* b, double* z, bool opt){
        _N = N; _a=a; _b=b; _z=z; _opt=opt;
    }

    //A destructor is needed only if "new" is used for space allocation
    //~JacobiPolynomials();

    //static Eigen::MatrixXd getJacobiPolynomials();
    Eigen::MatrixXd getJacobiPolynomials();
};

#endif // JACOBIPOLYNOMIALS_H
