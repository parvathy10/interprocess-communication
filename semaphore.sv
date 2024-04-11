module sem();
semaphore sem;
initial begin
 sem=new(1);
 fork
 taskA();
 taskB();
 #20 taskA();
 join_none
end
task taskA();
 getroom(1);
 #20 putroom(1);
endtask
task taskB();
 #5 getroom(2);
 #10 putroom(2);
endtask
task getroom(bit [1:0] id);
 $display("[%0t] : trying to get the room for %0d",$time,id);
 sem.get(1);
 $display("[%0t] : Room key obtained for %0d",$time,id);
endtask
task putroom(bit [1:0] id);
 $display("[%0t] :trying to leave the room for %0d",$time,id);
 sem.put(1);
 $display("[%0t] :room key put back for %0d",$time,id);
endtask
endmodule