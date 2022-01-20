Invariant: ch-crl-obs-1
Description: "Observation must have either value[x] or dataAbsentReason"
Severity: #error
Expression: "value.exists() or dataAbsentReason.exists()"

/*
<constraint>
                <key value="lep-1"/>
                <severity value="error"/>
                <human value="Code must be AMB (ambulatory) or IMP (inpatient encounter)"/>
                <expression value="code='AMB' or code='IMP'"/> 
            </constraint>
*/