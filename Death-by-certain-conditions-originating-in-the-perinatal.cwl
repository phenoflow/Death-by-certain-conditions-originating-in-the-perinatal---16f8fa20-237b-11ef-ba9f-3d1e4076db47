cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-certain-conditions-originating-in-the-perinatal-isoimmunization---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-isoimmunization---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  death-by-certain-conditions-originating-in-the-perinatal-skull---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-skull---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-isoimmunization---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-fetalis---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-fetalis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-skull---secondary/output
  chronic-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: chronic-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-fetalis---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-damage---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-damage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chronic-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-problem---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-problem---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-damage---secondary/output
  metabolic-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: metabolic-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-problem---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-neonat---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-neonat---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: metabolic-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-delivery---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-delivery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-neonat---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-afected---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-afected---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-delivery---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-fracture---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-fracture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-afected---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-unspec---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-fracture---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-ischaemia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-ischaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-unspec---secondary/output
  haemorrhagic-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: haemorrhagic-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-ischaemia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-membranes---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-membranes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: haemorrhagic-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-period---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-period---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-membranes---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-noted---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-noted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-period---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-neonatorum---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-neonatorum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-noted---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-specified---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-neonatorum---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-scalp---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-scalp---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-specified---secondary/output
  cranial-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: cranial-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-scalp---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-muscle---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-muscle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: cranial-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  peripheral-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: peripheral-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-muscle---secondary/output
  nutritional-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: nutritional-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: peripheral-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-melaena---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-melaena---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: nutritional-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-neonatl---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-neonatl---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-melaena---secondary/output
  haemolytic-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: haemolytic-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-neonatl---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-birth---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-birth---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: haemolytic-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-regulation---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-regulation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-birth---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-procedure---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-procedure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-regulation---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-tract---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-tract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-procedure---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-haematemesis---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-haematemesis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-tract---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-related---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-related---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-haematemesis---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-pregnancy---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-pregnancy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-related---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-preterm---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-preterm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-pregnancy---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-obstruction---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-obstruction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-preterm---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-pneumonia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-pneumonia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-obstruction---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-withdrawal---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-withdrawal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-pneumonia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-reaction---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-reaction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-withdrawal---secondary/output
  parasitic-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: parasitic-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-reaction---secondary/output
  massive-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: massive-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: parasitic-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  renal-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: renal-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: massive-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  viral-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: viral-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: renal-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  central-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: central-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: viral-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  noxious-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: noxious-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: central-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-diabetes---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: noxious-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-staphylococcu---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-staphylococcu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-diabetes---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-atelectasis---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-atelectasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-staphylococcu---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-polycythaemia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-polycythaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-atelectasis---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-group---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-group---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-polycythaemia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-agent---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-agent---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-group---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-circulation---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-circulation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-agent---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-distress---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-distress---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-circulation---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-meconium---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-meconium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-distress---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-balance---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-balance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-meconium---secondary/output
  digestive-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: digestive-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-balance---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-malaria---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-malaria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: digestive-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  haematological-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: haematological-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-malaria---secondary/output
  umbilical-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: umbilical-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: haematological-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-apnoea---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-apnoea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: umbilical-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-respiratory---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-respiratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-apnoea---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-hypoxia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-hypoxia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-respiratory---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-hypocalcaemia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-hypocalcaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-hypoxia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-newborn---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-newborn---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-hypocalcaemia---secondary/output
  cardiovascular-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: cardiovascular-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-newborn---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-hypoglycaemia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-hypoglycaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: cardiovascular-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-enterocolitis---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-enterocolitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-hypoglycaemia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-classified---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-enterocolitis---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-light---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-light---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-classified---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-kernicterus---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-kernicterus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-light---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-asphyxia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-asphyxia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-kernicterus---secondary/output
  bacterial-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: bacterial-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-asphyxia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-escherichia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-escherichia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: bacterial-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-oedema---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-oedema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-escherichia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-praevia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-praevia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-oedema---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-convulsion---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-convulsion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-praevia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-coagulation---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-coagulation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-convulsion---secondary/output
  transient-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: transient-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-coagulation---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-anaemia---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-anaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: transient-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-cardiac---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-cardiac---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-anaemia---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-paralysis---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-paralysis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-cardiac---secondary/output
  cerebral-death-by-certain-conditions-originating-in-the-perinatal---secondary:
    run: cerebral-death-by-certain-conditions-originating-in-the-perinatal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-paralysis---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-breast---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-breast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: cerebral-death-by-certain-conditions-originating-in-the-perinatal---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-nerve---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-nerve---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-breast---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-skeleton---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-skeleton---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-nerve---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-streptococcu---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-streptococcu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-skeleton---secondary/output
  death-by-certain-conditions-originating-in-the-perinatal-failure---secondary:
    run: death-by-certain-conditions-originating-in-the-perinatal-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-streptococcu---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: death-by-certain-conditions-originating-in-the-perinatal-failure---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
