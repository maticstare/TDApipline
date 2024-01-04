[H0_PVs] = make_PVs(separateMatricesH0, 100, 0.0001);

% Specify the path for the CSV file
csvFile = 'PVs.csv';

% Open the CSV file for writing
fid = fopen(csvFile, 'w');

% Iterate through the cell array and write each 50x1 double to the CSV file
for i = 1:numel(H0_PVs)
    % Flatten the 50x1 double to a single row
    flattenedRow = H0_PVs{i}(:)';
    
    % Convert the row to a string
    rowString = sprintf('%f,', flattenedRow);
    % Remove the trailing comma
    rowString = rowString(1:end-1);
    
    % Write the row to the CSV file
    fprintf(fid, '%s\n', rowString);
end

% Close the CSV file
fclose(fid);

disp('CSV file has been created.');

