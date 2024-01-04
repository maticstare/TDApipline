H0data = readmatrix("h0data.csv");
% Find indices of empty rows
emptyRowIndices = find(all(isnan(H0data), 2));

% Initialize a cell array to store separate matrices
separateMatricesH0 = {};

% Iterate through empty row indices to split data
for i = 1:length(emptyRowIndices)
    if i == 1
        % First matrix from the beginning to the first empty row
        separateMatricesH0{i} = H0data(1:emptyRowIndices(i)-1, :);
    else
        % Subsequent matrices between consecutive empty rows
        separateMatricesH0{i} = H0data(emptyRowIndices(i-1)+1:emptyRowIndices(i)-1, :);
    end
end

% Display or use the separate matrices as needed
for i = 1:length(separateMatricesH0)
    disp(['Matrix ', num2str(i)]);
    disp(separateMatricesH0{i});
end
%{
H1data = readmatrix("h1data.csv");
% Find indices of empty rows
emptyRowIndices = find(all(isnan(H1data), 2));

% Initialize a cell array to store separate matrices
separateMatricesH1 = {};

% Iterate through empty row indices to split data
for i = 1:length(emptyRowIndices)
    if i == 1
        % First matrix from the beginning to the first empty row
        separateMatricesH1{i} = H1data(1:emptyRowIndices(i)-1, :);
    else
        % Subsequent matrices between consecutive empty rows
        separateMatricesH1{i} = H1data(emptyRowIndices(i-1)+1:emptyRowIndices(i)-1, :);
    end
end

% Display or use the separate matrices as needed
for i = 1:length(separateMatricesH1)
    disp(['Matrix ', num2str(i)]);
    disp(separateMatricesH1{i});
end
%}
