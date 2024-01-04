H0data = {readmatrix("test0data.csv")}; %Change name if needed
%H1data = {readmatrix("test1data.csv")}; %For when we also have H1 diagrams.

[H0_PVs] = make_PVs(H0data, 100, 0.0001);

% [H1_PIs] = make_PIs(H1data, 100, 0.0001); %To generate H1 PIs

csvFile = 'vector.csv';

% Open the CSV file for writing
fid = fopen(csvFile, 'w');

% Iterate through the cell array and write each 50x1 double to the CSV file
for i = 1:numel(H0_PVs)
    % Flatten the 50x1 double to a single row
    flattenedRow = H0_PVs{i}(:)';
    %flattenedRowH1 = H1_PIs{i}(:)';
    
    % Convert the row to a string
    %rowString = sprintf('%f,', [flattenedRow, flattenedRowH1]);
    rowString = sprintf('%f,', flattenedRow);
    % Remove the trailing comma
    rowString = rowString(1:end-1);
    
    % Write the row to the CSV file
    fprintf(fid, '%s\n', rowString);
end

% Close the CSV file
fclose(fid);

disp('CSV file has been created.'); 
