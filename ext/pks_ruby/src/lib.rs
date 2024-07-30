use packs::packs::greet;
use magnus::{function, prelude::*, Error, Ruby};

fn hello() -> () {
    greet();
}

#[magnus::init]
fn init(ruby: &Ruby) -> Result<(), Error> {
    let module = ruby.define_module("PksRuby")?;
    module.define_singleton_method("hello", function!(hello, 0))?;
    Ok(())
}
