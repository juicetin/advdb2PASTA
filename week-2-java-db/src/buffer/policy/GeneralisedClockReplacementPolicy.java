package buffer.policy;

import buffer.BufferFrame;

import java.util.HashMap;
import java.util.List;

/**
 * GLOCK Replacement Policy
 */
public class GeneralisedClockReplacementPolicy implements ReplacementPolicy {

    private final int limit;

    public GeneralisedClockReplacementPolicy(int limit) {
        this.limit = limit;
    }

    @Override
    public String getName() {
        return "GCLOCK Replacement";
    }

    @Override
    public BufferFrame choose(List<BufferFrame> pool) {
        assert pool.size() > 0 : "Expects a pool of at least size 1";
        return null;
    }

    @Override
    public void notify(List<BufferFrame> pool, BufferFrame frame) {
    }

}
