module fork_join_none; 
 initial begin // Begin the initial block
 $display("------------fork join_none------------",$time); // Display a message indicating the start of the simulation along with the current time
 $display("\n[%0t]:****Threading starts***** \n",$time); // Display a message indicating the start of threading along with the current time
 fork // Begin a fork block to parallelize threads
 /////////////////thread 1/////////////////////
 begin // Begin thread 1
 #20 $display("[%0t]: Thread 1 Started",$time); // Display a message indicating the start of Thread 1 after a delay of 20 time units
 #35 $display("[%0t]: Thread 1 Finished",$time); // Display a message indicating the end of Thread 1 after a delay of 35 time units
 end // End thread 1
 /////////////////Thread 2/////////////////////
 begin // Begin thread 2
 #5 $display("[%0t]: Thread 2 Started",$time); // Display a message indicating the start of Thread 2 after a delay of 5 time units
 #10 $display("[%0t]: Thread 2 Finished",$time); // Display a message indicating the end of Thread 2 after a delay of 10 time units
 end // End thread 2
 /////////////////Thread 3/////////////////////
 begin // Begin thread 3
 #15 $display("[%0t]: Thread 3 Started",$time); // Display a message indicating the start of Thread 3 after a delay of 15 time units
 #25 $display("[%0t]: Thread 3 Finished",$time); // Display a message indicating the end of Thread 3 after a delay of 25 time units
 end // End thread 3
 join_none // Proceed without waiting for any thread to complete
 $display("\n[%0t]:******Main Thread joined******",$time); // Display a message indicating that the main thread has joined immediately, along with the current time
 end // End initial block
endmodule // End module declaration
