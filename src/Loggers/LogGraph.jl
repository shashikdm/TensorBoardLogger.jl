"""
    log_graph(logger, name, model)

logs a Chain variable with name
"""
function log_graph(logger::Logger, name::String, value::Chain)
    summ    = SummaryCollection()
    push!(summ.value, scalar_summary(name, value))
    write_event(logger.file, make_event(logger, summ))
end