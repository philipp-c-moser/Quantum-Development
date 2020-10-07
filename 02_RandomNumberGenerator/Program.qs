namespace RandomNumberGenerator {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;


    operation GenerateRandomBit() : Result {

        using (q = Qubit()) {
            H(q);

            return MResetZ(q);
        }
    }


    operation GenerateRandomNumber(maxValue : Int) : Int {

        // Mutable Variables can change during computation
        mutable result = 0;

        repeat {

            set result += 1;

        } until (result <= maxValue);

        return result;

    }


    @EntryPoint()
    operation DisplayRandomNumberMessage() : Int {

        let maxValue = 100;

        Message($"Random Number between 0 and {maxValue} is: ");

        return GenerateRandomNumber(maxValue);
    }
}
