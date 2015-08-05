package buffer.policy;

import buffer.BufferFrame;

import java.util.List;

/**
 * Least Recently Used Replacement Policy
 */
public class LruReplacementPolicy implements ReplacementPolicy {

    @Override
    public String getName() {
        return "LRU Replacement";
    }

    @Override
    public BufferFrame choose(List<BufferFrame> pool) {
        return null;
    }

    @Override
    public void notify(List<BufferFrame> pool, BufferFrame frame) {
    }

}
