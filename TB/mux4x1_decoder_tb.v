# code for mux4x1_decoder_tb.v
  ...
      module mux4x1_decoder_tb();
          reg [3:0]d;
          reg [1:0]s;
          wire y;
            mux4x1_decoder DUT(s,d,y);
            integer i,j;
                  initial
                    begin
                        {s,d}=0;
                    end
       
                initial
                  begin
                      for(i=0;i<4;i=i+1)
                    begin
                          s=i;
                          for(j=0;j<16;j=j+1)
                          begin
                                d=j;
                                #10;
                          end
                                #10;
                    end
                end
      
          initial
              $monitor("s=%b,d=%b,y=%b",s,d,y);
      endmodule
...
