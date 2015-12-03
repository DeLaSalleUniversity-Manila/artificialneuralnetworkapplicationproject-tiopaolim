input = load('input_test.dat');
output = load('output_test.dat');
load('elec_net.mat');
correct = 0;
wrong = 0;


for i=1:50
       a(i) = sim(net,[input(i,1);input(i,2);input(i,3)]);
       
   if (abs((output(i)-a(i))/output(i))) * 100 <= 30 %below 35 percent error
       correct = correct + 1;
   else
       wrong = wrong + 1;
   end
end

fprintf('Correct: %d', correct);
fprintf('\n');
fprintf('Wrong: %d', wrong);
fprintf('\n');
accuracy = (correct/(correct+wrong)) * 100;
fprintf('Accuracy: %0.2f percent', accuracy);
fprintf('\n');
