argstest: src/main.cpp target/cxxbridge/argstest/src/lib.rs.cc target/debug/libargstest.a
	c++ src/main.cpp target/cxxbridge/argstest/src/lib.rs.cc -o argstest target/debug/libargstest.a -lpthread -I target/cxxbridge/argstest/src -ldl

target/cxxbridge/argstest/src/lib.rs.cc target/debug/libargstest.a:
	cargo build
