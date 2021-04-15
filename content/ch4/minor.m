
function myMatrix = minor(A,i,j)
    arguments
        A (:,:,:)
        i (1,1) {mustBeInteger, mustBePositive}
        j (1,1) {mustBeInteger, mustBePositive}
    end

A(i,:) = [];
A(:,j) = [];

myMatrix = A;
end