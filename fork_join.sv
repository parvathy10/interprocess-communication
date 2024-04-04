module fork_join;
initial begin
    // Display a separator line with the current simulation time
    $display("-------forkjoins-----------",$time);
    // Display a message indicating the start of threading, with the current simulation time
    $display("\n[%0t]: *Threading starts** \n",$time);

    // Fork block to start multiple threads concurrently
    fork
        //////////////////thread 1/////////////////////
        begin
            // Delay 25 time units and display a message indicating the start of Thread 1
            #25 $display("[%0t]: Thread 1 Started",$time);
            // Delay 45 more time units and display a message indicating the end of Thread 1
            #45 $display("[%0t]: Thread 1 Finished",$time);
        end

        //////////////////Thread 2/////////////////////
        begin
            // Delay 10 time units and display a message indicating the start of Thread 2
            #10 $display("[%0t]: Thread 2 Started",$time);
            // Delay 15 more time units and display a message indicating the end of Thread 2
            #15 $display("[%0t]: Thread 2 Finished",$time);
        end

        //////////////////Thread 3/////////////////////
        begin
            // Delay 20 time units and display a message indicating the start of Thread 3
            #20 $display("[%0t]: Thread 3 Started",$time);
            // Delay 25 more time units and display a message indicating the end of Thread 3
            #25 $display("[%0t]: Thread 3 Finished",$time);
        end
    // Join block to synchronize and wait for all threads to finish before proceeding
    join
    // Display a message indicating the main thread has joined, with the current simulation time
    $display("\n[%0t]: ***Main Thread joined***",$time);
end
endmodule 
