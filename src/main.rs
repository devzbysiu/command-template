use anyhow::Result;
use cmdhub::register_cmd;
use log::info;
use rutils::file_logger::setup_logger;
use std::env;
use std::process::exit;

fn main() -> Result<()> {
    setup_logger()?;
    info!("starting command");
    let args: Vec<String> = env::args().collect();
    if args.len() == 2 && args[1] == "register" {
        register_cmd()?;
        exit(0);
    }
    Ok(())
}
