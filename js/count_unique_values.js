//count unique numbers

function countUniqueValues(arr) {
    let i = 0;
    for (let j = 0; j < arr.length; j++) {
        if (arr[i] !== arr[j]) {
            i++;
            arr[i] = arr[j]
        }
    }
    return i + 1;
}

countUniqueValues([1, 2, 3, 4, 5, 6, 7, 5, 5, 6, 7]);