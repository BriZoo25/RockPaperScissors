module RockPaperScissor(
input rock1, rock2, paper1, paper2, scissors1, scissors2, 
input rst2, rst,
output reg [1:0] result,
output [6:0] d,

output reg[3:0]score1,
output reg[3:0]score2,
output[6:0] p1_score,
//output[6:0] p1_score_dig2,
output[6:0] p2_score,
//output[6:0] p2_score_dig2

); 




always@(negedge rst) 
begin 
if (rst2 == 1'b1)
begin
score1 <= 4'b0000;
score2 <= 4'b0000;
result <= 2'b00;
end

if (score1 == 4'b1010 || score2 == 4'b1010)
begin 
score1 <= 4'b0000;
score2 <= 4'b0000;
end


if (rock1 == 1'b1 && scissors2 == 1'b1)
begin
result <= 2'b01;
score1 <= score1 + 4'b0001;
score2 <= score2;
end 
else if (paper1 == 1'b1 && rock2 == 1'b1)
begin
result <= 2'b01;
score1 <= score1 + 4'b0001;
score2 <= score2;
end
else if(scissors1 == 1'b1 && paper2 == 1'b1)
begin 
result <= 2'b01;
score1 <= score1 + 4'b0001;
score2 <= score2;
end

else if (rock2 == 1'b1 && scissors1 == 1'b1)
begin
result <= 2'b10;
score2 <= score2 + 4'b0001;
score1 <= score1;
end 
else if (paper2 == 1'b1 && rock1 == 1'b1)
begin
result <= 2'b10;
score2 <= score2 + 4'b0001;
score1 <= score1;
end
else if(scissors2 == 1'b1 && paper1 == 1'b1)
begin 
result <= 2'b10;
score2 <= score2 + 4'b0001;
score1 <= score1;
end
else 
begin
result <= 2'b00;

end

end
ProjectSeven sev(result, d);
ScoreSeven score_p1(score1, p1_score);
//ScoreSeven score_p1_dig2(score1[7:4], p1_score_dig2);
ScoreSeven score_p2(score2, p2_score);
//ScoreSeven score_p2_dig2(score2[7:4], p2_score_dig2);


endmodule





