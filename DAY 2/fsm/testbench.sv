module fsm_example(
  input  logic clk,
  input  logic reset,
  input  logic in,
  output logic out
);
  typedef enum logic[0:0] {
    A = 1'b0,
    B = 1'b1
  } state_t;
  state_t present_state, next_state;
  always_ff @(posedge clk) begin
    if (reset)
      present_state <= B;
    else
      present_state <= next_state; 
  end
  always_comb begin
    unique case (present_state)
      A: next_state = (in == 1) ? B : A;
      B: next_state = (in == 1) ? B : A;
      default: next_state = A; 
    endcase
  end
  assign out = (present_state == B);
endmodule
