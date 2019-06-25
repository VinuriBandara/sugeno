fis = readfis ('sugeno_showroom.fis');

## Plot the input and output membership functions.
plotmf (fis, 'input', 1);
plotmf (fis, 'input', 2);
plotmf (fis, 'input', 3);
##plotmf (fis, 'output', 1);
##plotmf (fis, 'output', 2);

showrule (fis);

##For output 1
##gensurf(fis,[1 2],1,[20 20],[NaN NaN NaN]);
##gensurf(fis,[1 3],1,[20 20],[NaN NaN NaN]);
##gensurf(fis,[2 3],1,[20 20],[NaN NaN NaN]);

##For output 2
##gensurf(fis,[1 2],2,[20 20],[NaN NaN NaN]);
##gensurf(fis,[1 3],2,[20 20],[NaN NaN NaN]);
##gensurf(fis,[2 3],2,[20 20],[NaN NaN NaN]);

puts ("\nFor the following four sets of product quality, customer service and showroom enviornment values:\n\n");
inputs = [2,2,2 ; 3,3,4 ; 4,4,3 ; 5,4,5 ; 6.5,5,8;]

puts ("\nThe Customer satisafcation and Popularity are:\n\n");
satisfaction_popularity = evalfis (inputs, fis)



