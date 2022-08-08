use anyhow::Result;
use log::info;
use rutils::file_logger::setup_logger;

#[command]
fn entry() -> Result<()> {
    setup_logger()?;
    info!("starting command");
}
