UPDATE dp_masseforsendelse dm
SET
    ( dm.dp_massafs_id,
      ekstern_forsendelse_id ) = (
        SELECT
            mr.id,
            mr.ekstern_forsendelse_id
        FROM
            dp_masseafendelse_rest mr
        WHERE
            mr.ekstern_forsendelse_id != NULL
            and mr.DP_MASS_ID = dm.DP_MASS_ID
    )
where dm 