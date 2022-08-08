use anyhow::Result;
use log::info;
use std::env;
use std::process::exit;

fn main() -> Result<()> {
    setup_logger()?;
    info!("starting command");
    let args: Vec<_> = env::args().collect();
    if args.len() == 2 && args[1] == "register".into() {
        register_cmd()?;
        exit(0);
    }
    Ok(())
}
