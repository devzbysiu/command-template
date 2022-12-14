use anyhow::Result;
use cmdhub_macros::command;
use log::info;
use rutils::file_logger::setup_logger;

#[command]
fn entry() -> Result<()> {
    let _res = setup_logger();
    info!("starting command");
    Ok(())
}
