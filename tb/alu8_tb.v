initial begin

    // Test 1: Addition
    a = 8'd10; b = 8'd5; sel = 3'b000; #10;

    // Test 2: Addition overflow check
    a = 8'd200; b = 8'd100; sel = 3'b000; #10;

    // Test 3: Subtraction (normal)
    a = 8'd20; b = 8'd5; sel = 3'b001; #10;

    // Test 4: Subtraction (negative case)
    a = 8'd5; b = 8'd20; sel = 3'b001; #10;

    // Test 5: AND operation
    a = 8'b11001100; b = 8'b10101010; sel = 3'b010; #10;

    // Test 6: OR operation
    a = 8'b11001100; b = 8'b10101010; sel = 3'b011; #10;

    // Test 7: XOR operation
    a = 8'b11110000; b = 8'b10101010; sel = 3'b100; #10;

    // Test 8: NOT operation (A only)
    a = 8'b00001111; b = 8'b00000000; sel = 3'b101; #10;

    // Test 9: Shift Left
    a = 8'b00001111; sel = 3'b110; #10;

    // Test 10: Shift Right
    a = 8'b11110000; sel = 3'b111; #10;

    $finish;
end
