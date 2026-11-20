# code for mux4x1_decoder.v
  ...
     module mux4x1_decoder(s,d,y);
        input [3:0]d;
        input [1:0]s;
        output y;
        wire w0,w1,w2,w3;

        decoder_2x4 d1(s[0],s[1],w0,w1,w2,w3);
        bufif1 b1(y,d[0],w0);
        bufif1 b2(y,d[1],w1);
        bufif1 b3(y,d[2],w2);
        bufif1 b4(y,d[3],w3);
    endmodule
...
