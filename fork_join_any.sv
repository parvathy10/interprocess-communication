module fork_join_any; // Module declaration
 initial begin // Initial block start
 $display("------------fork join_any------------",$time); // Display start message
 $display("\n[%0t]:****Threading starts***** \n",$time); // Display threading start message
 fork // Start parallel threads
 begin // Thread 1 start
 #20 $display("[%0t]: Thread 1 Started",$time); // Display Thread 1 start message after 20 time units
 #35 $display("[%0t]: Thread 1 Finished",$time); // Display Thread 1 finish message after 35 time units
 end // Thread 1 end
 begin // Thread 2 start
 #5 $display("[%0t]: Thread 2 Started",$time); // Display Thread 2 start message after 5 time units
 #10 $display("[%0t]: Thread 2 Finished",$time); // Display Thread 2 finish message after 10 time units
 end // Thread 2 end
 begin // Thread 3 start
 #15 $display("[%0t]: Thread 3 Started",$time); // Display Thread 3 start message after 15 time units
 #25 $display("[%0t]: Thread 3 Finished",$time); // Display Thread 3 finish message after 25 time units
 end // Thread 3 end
 join_any // Wait for any thread to complete
 $display("\n[%0t]:******Main Thread joined******",$time); // Display main thread join message
 end // End of initial block
endmodule // End of module
