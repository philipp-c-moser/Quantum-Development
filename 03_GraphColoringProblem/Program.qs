namespace GraphColoringProblem {
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    

    @EntryPoint()
    operation SolveGraphColoringProblem() : Unit {
        // Number of Verticles
        let nVerticles = 5;

        let edges = [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3), (3, 4)];

        let coloring = [false, false, true, false, false, true, true, true, true, false];
        let colors = ["red", "green", "blue", "yellow"];

        let colorBits = Chunks(2, coloring);

        for(i in 0 .. nVerticles - 1) {

            let colorIndex = BoolArrayAsInt(colorBits[i]);
            Message($"Vertex {i} - color #{colorIndex} ({colors[colorIndex]})");

        }

    }
}
