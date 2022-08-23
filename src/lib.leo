function bubble_sort(arr: [u32; 10]) -> [u32; 10] {
    // Traverse the entire array
    for i in 0..9 {
        for j in 0..9-i {
            // Move the smaller elements forward
            if arr[j+1] < arr[j] {
                // Swap the elemets at indexes ‘j‘ and ‘j+1‘
                let swap = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = swap;
            } 
        }
    }
    return arr;
}