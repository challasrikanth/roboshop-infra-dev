output "sg_ids" {
    value = module.sg[*].sg_id

    #module.sg[*] → all module instances
    #.sg_id → fetch sg_id output from each
}