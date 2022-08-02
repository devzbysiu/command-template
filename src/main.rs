use anyhow::Result;
use log::info;

fn main() -> Result<()> {
    setup_logger()?;
    info!("starting command");
    register_cmd()?;
}
