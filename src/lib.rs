#[cxx::bridge]
mod ffi {

    // Rust types and signatures exposed to C++.
    extern "Rust" {
        fn print_args();
    }

}

fn print_args() {
    let args = std::env::args();
    println!("{:?}", args);
}
