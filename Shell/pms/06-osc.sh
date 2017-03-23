function osco {
    for i in "$@"
    do
         osc co home:fusion809 "$i"
    done
}
