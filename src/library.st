NAMESPACE Counter

    INTERFACE ICalculator
        METHOD Calc : INT
            VAR_INPUT
                a, b : INT;
            END_VAR
        END_METHOD
    END_INTERFACE

    CLASS AddCalculator
        IMPLEMENTS ICalculator
        METHOD PUBLIC Calc : INT
            VAR_INPUT
                a, b : INT;
            END_VAR
            Calc := a + b;
        END_METHOD
    END_CLASS

    CLASS SubCalculator
        IMPLEMENTS ICalculator
        METHOD PUBLIC Calc : INT
            VAR_INPUT
                a, b : INT;
            END_VAR
            Calc := a - b;
        END_METHOD
    END_CLASS

    FUNCTION Func : INT
        VAR_INPUT
            impl : ICalculator;
        END_VAR
        // Result could be 8 or -2, depending on which implementation of 'ICalculator' is given.
        Func := impl.Calc(3, 5);
    END_FUNCTION

END_NAMESPACE
