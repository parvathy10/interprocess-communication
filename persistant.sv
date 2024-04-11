module events_delayed();
event e;
//////////////////////----trigerring after 10 ns----////////////////////////////
initial begin
#10
-> e;
$display ("@%0t: Event e1 triggered", $time);
end
initial begin
$display ("@%0t: waiting for the Event e1 ('@')", $time);
@e;
$display ("@%0t: Event e1 received (@)", $time);
end
initial begin
$display ("@%0t: waiting for the Event e1 ('e1.triggered')", $time);
wait(e.triggered);
$display ("@%0t: Event e1 received (wait)", $time);
end
endmodule